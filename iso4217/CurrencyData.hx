package iso4217;

import haxe.ds.Option;

@:structInit
class CurrencyData {
    public var number(default, null): Int;
    public var minorUnits(default, null): Option<Int>;
    public var minorToMajor(default, null): Float;
}
