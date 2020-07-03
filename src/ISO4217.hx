package;

import haxe.ds.Option;

typedef Currency = {
    final code: CurrencyCode;
    final numeric: Int;
    final minorUnits: Option<Int>;
    final minorToMajorFactor: Float;
}

class ISO4217 {
	public static function byCode( code: String ) : Option<Currency> {
		for (c in currencies) {
			if (c.code == code) {
				return Some(c);
			}
		}

		return None;
	}

	public static function byNumeric( code: Int ) : Option<Currency> {
		for (c in currencies) {
			if (c.numeric == code) {
				return Some(c);
			}
		}

		return None;
	}

	public static function minorToMajorUnits( value: Int, c: Currency ) : Float {
		return value * c.minorToMajorFactor;
    }

	static final currencies: Array<Currency> = [
		{ code: AED, numeric: 784, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: AFN, numeric: 971, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: ALL, numeric: 8, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: AMD, numeric: 51, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: ANG, numeric: 532, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: AOA, numeric: 973, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: ARS, numeric: 32, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: AUD, numeric: 36, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: AWG, numeric: 533, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: AZN, numeric: 944, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BAM, numeric: 977, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BBD, numeric: 52, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BDT, numeric: 50, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BGN, numeric: 975, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BHD, numeric: 48, minorUnits: Some(3), minorToMajorFactor: 0.001 },
		{ code: BIF, numeric: 108, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: BMD, numeric: 60, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BND, numeric: 96, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BOB, numeric: 68, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BOV, numeric: 984, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BRL, numeric: 986, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BSD, numeric: 44, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BTN, numeric: 64, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BWP, numeric: 72, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BYN, numeric: 933, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: BZD, numeric: 84, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: CAD, numeric: 124, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: CDF, numeric: 976, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: CHE, numeric: 947, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: CHF, numeric: 756, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: CHW, numeric: 948, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: CLF, numeric: 990, minorUnits: Some(4), minorToMajorFactor: 0.0001 },
		{ code: CLP, numeric: 152, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: CNY, numeric: 156, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: COP, numeric: 170, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: COU, numeric: 970, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: CRC, numeric: 188, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: CUC, numeric: 931, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: CUP, numeric: 192, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: CVE, numeric: 132, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: CZK, numeric: 203, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: DJF, numeric: 262, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: DKK, numeric: 208, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: DOP, numeric: 214, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: DZD, numeric: 12, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: EGP, numeric: 818, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: ERN, numeric: 232, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: ETB, numeric: 230, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: EUR, numeric: 978, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: FJD, numeric: 242, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: FKP, numeric: 238, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: GBP, numeric: 826, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: GEL, numeric: 981, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: GHS, numeric: 936, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: GIP, numeric: 292, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: GMD, numeric: 270, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: GNF, numeric: 324, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: GTQ, numeric: 320, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: GYD, numeric: 328, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: HKD, numeric: 344, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: HNL, numeric: 340, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: HRK, numeric: 191, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: HTG, numeric: 332, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: HUF, numeric: 348, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: IDR, numeric: 360, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: ILS, numeric: 376, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: INR, numeric: 356, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: IQD, numeric: 368, minorUnits: Some(3), minorToMajorFactor: 0.001 },
		{ code: IRR, numeric: 364, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: ISK, numeric: 352, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: JMD, numeric: 388, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: JOD, numeric: 400, minorUnits: Some(3), minorToMajorFactor: 0.001 },
		{ code: JPY, numeric: 392, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: KES, numeric: 404, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: KGS, numeric: 417, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: KHR, numeric: 116, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: KMF, numeric: 174, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: KPW, numeric: 408, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: KRW, numeric: 410, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: KWD, numeric: 414, minorUnits: Some(3), minorToMajorFactor: 0.001 },
		{ code: KYD, numeric: 136, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: KZT, numeric: 398, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: LAK, numeric: 418, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: LBP, numeric: 422, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: LKR, numeric: 144, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: LRD, numeric: 430, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: LSL, numeric: 426, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: LYD, numeric: 434, minorUnits: Some(3), minorToMajorFactor: 0.001 },
		{ code: MAD, numeric: 504, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MDL, numeric: 498, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MGA, numeric: 969, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MKD, numeric: 807, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MMK, numeric: 104, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MNT, numeric: 496, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MOP, numeric: 446, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MRO, numeric: 478, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MUR, numeric: 480, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MVR, numeric: 462, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MWK, numeric: 454, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MXN, numeric: 484, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MXV, numeric: 979, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MYR, numeric: 458, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: MZN, numeric: 943, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: NAD, numeric: 516, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: NGN, numeric: 566, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: NIO, numeric: 558, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: NOK, numeric: 578, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: NPR, numeric: 524, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: NZD, numeric: 554, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: OMR, numeric: 512, minorUnits: Some(3), minorToMajorFactor: 0.001 },
		{ code: PAB, numeric: 590, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: PEN, numeric: 604, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: PGK, numeric: 598, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: PHP, numeric: 608, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: PKR, numeric: 586, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: PLN, numeric: 985, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: PYG, numeric: 600, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: QAR, numeric: 634, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: RON, numeric: 946, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: RSD, numeric: 941, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: RUB, numeric: 643, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: RWF, numeric: 646, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: SAR, numeric: 682, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: SBD, numeric: 90, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: SCR, numeric: 690, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: SDG, numeric: 938, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: SEK, numeric: 752, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: SGD, numeric: 702, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: SHP, numeric: 654, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: SLL, numeric: 694, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: SOS, numeric: 706, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: SRD, numeric: 968, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: SSP, numeric: 728, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: STD, numeric: 678, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: SVC, numeric: 222, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: SYP, numeric: 760, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: SZL, numeric: 748, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: THB, numeric: 764, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: TJS, numeric: 972, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: TMT, numeric: 934, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: TND, numeric: 788, minorUnits: Some(3), minorToMajorFactor: 0.001 },
		{ code: TOP, numeric: 776, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: TRY, numeric: 949, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: TTD, numeric: 780, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: TWD, numeric: 901, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: TZS, numeric: 834, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: UAH, numeric: 980, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: UGX, numeric: 800, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: USD, numeric: 840, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: USN, numeric: 997, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: UYI, numeric: 940, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: UYU, numeric: 858, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: UZS, numeric: 860, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: VEF, numeric: 937, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: VND, numeric: 704, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: VUV, numeric: 548, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: WST, numeric: 882, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: XAF, numeric: 950, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: XAG, numeric: 961, minorUnits: None, minorToMajorFactor: 1 },
		{ code: XAU, numeric: 959, minorUnits: None, minorToMajorFactor: 1 },
		{ code: XBA, numeric: 955, minorUnits: None, minorToMajorFactor: 1 },
		{ code: XBB, numeric: 956, minorUnits: None, minorToMajorFactor: 1 },
		{ code: XBC, numeric: 957, minorUnits: None, minorToMajorFactor: 1 },
		{ code: XBD, numeric: 958, minorUnits: None, minorToMajorFactor: 1 },
		{ code: XCD, numeric: 951, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: XDR, numeric: 960, minorUnits: None, minorToMajorFactor: 1 },
		{ code: XOF, numeric: 952, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: XPD, numeric: 964, minorUnits: None, minorToMajorFactor: 1 },
		{ code: XPF, numeric: 953, minorUnits: Some(0), minorToMajorFactor: 1 },
		{ code: XPT, numeric: 962, minorUnits: None, minorToMajorFactor: 1 },
		{ code: XSU, numeric: 994, minorUnits: None, minorToMajorFactor: 1 },
		{ code: XTS, numeric: 963, minorUnits: None, minorToMajorFactor: 1 },
		{ code: XUA, numeric: 965, minorUnits: None, minorToMajorFactor: 1 },
		{ code: XXX, numeric: 999, minorUnits: None, minorToMajorFactor: 1 },
		{ code: YER, numeric: 886, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: ZAR, numeric: 710, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: ZMW, numeric: 967, minorUnits: Some(2), minorToMajorFactor: 0.01 },
		{ code: ZWL, numeric: 932, minorUnits: Some(2), minorToMajorFactor: 0.01 },
	];
}

enum abstract CurrencyCode(String) from String to String {
	final AED; final AFN; final ALL; final AMD; final ANG; final AOA; final ARS; final AUD; final AWG; final AZN;
	final BAM; final BBD; final BDT; final BGN; final BHD; final BIF; final BMD; final BND; final BOB; final BOV; final BRL; final BSD; final BTN; final BWP; final BYN; final BZD;
	final CAD; final CDF; final CHE; final CHF; final CHW; final CLF; final CLP; final CNY; final COP; final COU; final CRC; final CUC; final CUP; final CVE; final CZK;
	final DJF; final DKK; final DOP; final DZD; final EGP; final ERN; final ETB; final EUR;
	final FJD; final FKP;
	final GBP; final GEL; final GHS; final GIP; final GMD; final GNF; final GTQ; final GYD;
	final HKD; final HNL; final HRK; final HTG; final HUF;
	final IDR; final ILS; final INR; final IQD; final IRR; final ISK;
	final JMD; final JOD; final JPY;
	final KES; final KGS; final KHR; final KMF; final KPW; final KRW; final KWD; final KYD; final KZT;
	final LAK; final LBP; final LKR; final LRD; final LSL; final LYD;
	final MAD; final MDL; final MGA; final MKD; final MMK; final MNT; final MOP; final MRO; final MUR; final MVR; final MWK; final MXN; final MXV; final MYR; final MZN;
	final NAD; final NGN; final NIO; final NOK; final NPR; final NZD;
	final OMR;
	final PAB; final PEN; final PGK; final PHP; final PKR; final PLN; final PYG;
	final QAR;
	final RON; final RSD; final RUB; final RWF;
	final SAR; final SBD; final SCR; final SDG; final SEK; final SGD; final SHP; final SLL; final SOS; final SRD; final SSP; final STD; final SVC; final SYP; final SZL;
	final THB; final TJS; final TMT; final TND; final TOP; final TRY; final TTD; final TWD; final TZS;
	final UAH; final UGX; final USD; final USN; final UYI; final UYU; final UZS;
	final VEF; final VND; final VUV;
	final WST;
	final XAF; final XAG; final XAU; final XBA; final XBB; final XBC; final XBD; final XCD; final XDR; final XOF; final XPD; final XPF; final XPT; final XSU; final XTS; final XUA; final XXX;
	final YER;
	final ZAR; final ZMW; final ZWL;
}
