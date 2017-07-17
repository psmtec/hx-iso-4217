import iso4217.CurrencyCode;
using iso4217.UnitConverter;

import haxe.unit.*;

class UnitConverterTest extends TestCase {
	function testCode() {
		assertEquals(EUR.minorToMajor(54321), 543.21);
	}

	function testUpperCase() {
		assertEquals(CurrencyCode.validate('EUR').minorToMajor(1234), 12.34);
	}

	function testRandomCase() {
		assertEquals(CurrencyCode.validate('eUR').minorToMajor(1234), 12.34);
	}
}
