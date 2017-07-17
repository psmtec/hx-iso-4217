package iso4217;

@:expose @:keep
class UnitConverter {
	public static function minorToMajor( cc: CurrencyCode, value: Int ) : Float {
		return Currencies.fromString(cc).minorToMajor(value);
	}
}
