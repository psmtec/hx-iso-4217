package iso4217;

import haxe.ds.Option;

@:expose @:keep
@:structInit
class Currency {
    public var code(default, null): CurrencyCode;
    public var number(default, null): Int;
    public var minorUnits(default, null): Option<Int>;
    public var minorToMajorFactor(default, null): Float;

	public function minorToMajor( value: Int ) : Float {
		return minorToMajorFactor * value;
    }
}
