package iso4217;

@:expose @:keep
class Currencies {
	public static function fromString( code: String ) : Currency {
		for (fn in Type.getClassFields(CurrencyDetails)) {
			if (fn == code.toUpperCase()) {
				return Reflect.getProperty(CurrencyDetails, fn);
			}
		}

		throw 'invalid currency code "$code"';
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
