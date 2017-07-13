# haxe-iso4217

- ISO 4217:2015 data as of 2017-06-09
- all data is available at: https://www.currency-iso.org

# haxe usage
```haxe
import iso4217.CurrencyCode;
using iso4217.UnitConverter;

trace(EUR.minorToMajor(1234));
```

# js usage
```js
import { UnitConverter } from 'iso4217';

console.log(UnitConverter.minorToMajor('EUR', 123456));
```
