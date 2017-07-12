import haxe.ds.Option;
using Lambda;

typedef Entry = {
	code: String,
	number: Int,
	minorUnits: Option<Int>,
	minorToMajor: Float,
}

class Converter {
	public static function main() {
		var data = sys.io.File.getContent('./data/list_one.xml');
		var xml = Xml.parse(data);
		var entries = xml.firstElement().firstElement();
		var table: Array<Entry> = [];

		for (n in entries.elements()) {
			switch n.nodeName {
				case 'CcyNtry': setEntry(table, n);
			}
		}

		writeCodes('./iso4217/CurrencyCode.hx', table);
		writeDetails('./iso4217/CurrencyDetails.hx', table);

		trace('EUR 1234 => ${iso4217.CurrencyTools.minorToMajor(iso4217.CurrencyCode.EUR, 1234)}');
		trace('TND 1234 => ${iso4217.CurrencyTools.minorToMajor(iso4217.CurrencyCode.TND, 1234)}');
	}

	static function setEntry( table: Array<Entry>, node: Xml ) {
		var code = '';
		var number = -1;
		var minorUnits: Option<Int>;
		var minorToMajor: Float;

		for (n in node.elements()) {
			switch n.nodeName {
				case 'Ccy': code = n.firstChild().nodeValue;
				case 'CcyNbr': number = Std.parseInt(n.firstChild().nodeValue);
				case 'CcyMnrUnts':
					var parsed = Std.parseInt(n.firstChild().nodeValue);
					minorUnits = parsed != null ? Some(parsed) : None;
					minorToMajor = switch minorUnits {
						case Some(v): 1 / Math.pow(10, v);
						case None: 1.0;
					}
			}
		}

		if (table.find(function( i ) return i.code == code) == null) {
			table.push({
				code: code,
				number: number,
				minorUnits: minorUnits,
				minorToMajor: minorToMajor,
			});
		}
	}

	static function sortABC( l: Entry, r: Entry ) : Int {
		var a = l.code.toLowerCase();
		var b = r.code.toLowerCase();

		return a < b
			? -1
			: a > b
				? 1
				: 0;
	}

// class CurrencyCode {
// 	public static inline var AED = {
// 		name: 'AED',
// 		code: 815,
// 		minorUnits: 2,
// 	}
// }

	static function writeCodes( url: String, table: Array<Entry> ) {
		var content = new StringBuf();
		content.add('package iso4217;\n\n');
		content.add('// this file is generated, modifications will be lost\n\n');
		content.add('@:expose @:keep\n@:enum abstract CurrencyCode(String) from String to String {\n');

		var sorted = table.copy();
		sorted.sort(sortABC);

		for (e in sorted) {
			if (e.code.length == 0) continue;
			content.add('\tvar ${e.code} = \'${e.code}\';\n');
		}

		content.add('}\n');

		sys.io.File.saveContent(url, content.toString());
	}

	static function writeDetails( url: String, table: Array<Entry> ) {
		var content = new StringBuf();
		content.add('package iso4217;\n\n');
		content.add('// this file is generated, modifications will be lost\n\n');
		content.add('@:expose @:keep\nclass CurrencyDetails {\n');

		var sorted = table.copy();
		sorted.sort(sortABC);

		for (e in sorted) {
			if (e.code.length == 0) continue;
			content.add('\tpublic static var ${e.code}: CurrencyData = { number: ${e.number}, minorUnits: ${e.minorUnits}, minorToMajor: ${e.minorToMajor} }\n');
		}

		content.add('}\n');

		sys.io.File.saveContent(url, content.toString());
	}
}
