import iso4217.CurrencyCode;
import iso4217.Currencies;
using iso4217.UnitConverter;

import haxe.unit.*;

class CurrenciesTest extends TestCase {
	function testUpperCase() {
		assertEquals(Currencies.fromString('EUR').minorToMajor(1234), 12.34);
	}

	function testRandomCase() {
		assertEquals(Currencies.fromString('eUR').minorToMajor(1234), 12.34);
	}

	function testNumber() {
		assertEquals(Currencies.fromNumber(978).minorToMajor(1234), 12.34);
	}

	function testFailForUnknownCode() {
		// var code = 'EUR';
		var code = 'something fake';

		var result = try {
			Currencies.fromString(code);
			false;
		} catch (x: Dynamic) {
			true;
		}

		assertTrue(result);
	}

	function testFailForUnknownNumber() {
		// var n = 978;
		var n = 666;

		var result = try {
			Currencies.fromNumber(n);
			false;
		} catch (x: Dynamic) {
			true;
		}

		assertTrue(result);
	}
}
