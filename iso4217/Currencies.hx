package iso4217;

@:expose @:keep
class Currencies {
	public static function all() : Array<Currency>
		return Type.getClassFields(CurrencyDetails)
			.map(function( item ) return Reflect.getProperty(CurrencyDetails, item));

	public static function fromString( code: String ) : Currency {
		var c = Reflect.getProperty(CurrencyDetails, code.toUpperCase());

		if (c == null) {
			throw 'invalid currency code "$code"';
		}

		return c;
	}

	public static function fromNumber( n: Int ) : Currency {
		for (fn in Type.getClassFields(CurrencyDetails)) {
			var details: Currency = Reflect.getProperty(CurrencyDetails, fn);

			if (Reflect.getProperty(details, 'number') == n) {
				return details;
			}
		}

		throw 'invalid currency number "$n"';
	}
}
