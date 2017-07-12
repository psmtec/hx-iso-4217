package iso4217;

@:expose @:keep
class CurrencyTools {
	public static function minorToMajor( cc: CurrencyCode, value: Int ) : Float {
		var currency: CurrencyData = Reflect.field(CurrencyDetails, cc);
		return value * currency.minorToMajor;
	}
}
