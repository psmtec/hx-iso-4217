using Lambda;

typedef Entry = {
	// countryName: String,
	// currencyName: String,
	code: String,
	number: Int,
	// frationals: Int,
}

class Converter {
	public static function main() {
		var data = sys.io.File.getContent('./data/list_one.xml');
		var xml = Xml.parse(data);
		var entries = xml.firstElement().firstElement(); // <ISO_4217><CcyTbl>
		var table: Array<Entry> = [];

		for (n in entries.elements()) {
			switch n.nodeName {
				case 'CcyNtry': setEntry(table, n);
			}
		}

		writeCodes('./iso4217/CurrencyCode.hx', table);
	}

	static function setEntry( table: Array<Entry>, node: Xml ) {
		var code = '';
		var number = -1;

		for (n in node.elements()) {
			switch n.nodeName {
				case 'Ccy': code = n.firstChild().nodeValue;
				case 'CcyNbr': number = Std.parseInt(n.firstChild().nodeValue);
			}
		}

		if (table.find(function( i ) return i.code == code) == null) {
			table.push({
				code: code,
				number: number,
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

	static function writeCodes( url: String, table: Array<Entry> ) {
		var content = new StringBuf();
		content.add('package iso4217;\n\n');
		content.add('@:enum abstract CurrencyCode(String) from String to String {\n');

		var sorted = table.copy();
		sorted.sort(sortABC);

		for (e in sorted) {
			if (e.code.length == 0) continue;
			content.add('\tvar ${e.code} = \'${e.code}\';\n');
		}

		content.add('}\n');

		sys.io.File.saveContent(url, content.toString());
	}
}
