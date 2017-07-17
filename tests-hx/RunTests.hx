import haxe.unit.*;

class RunTests {
	static var tests: Array<TestCase> = [
		new UnitConverterTest(),
	];

	public static function main() {
		var runner = new TestRunner();

		for (t in tests)
			runner.add(t);

		runner.run();

		// travix.Logger.exit(
		// 	if (!runner.run()) 500
		// 	else 0
		// );
	}
}
