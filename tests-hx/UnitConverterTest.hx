import iso4217.CurrencyCode;
using iso4217.UnitConverter;

import haxe.unit.*;

class UnitConverterTest extends TestCase {
	function testCode() {
		assertEquals(EUR.minorToMajor(54321), 543.21);
	}
}
