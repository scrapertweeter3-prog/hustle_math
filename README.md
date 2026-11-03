# hustle_math

Side-hustle math that prices the hidden costs. A gig app, a reselling flip, or a freelance project quotes one number; the real wage is what is left after fees, supplies, mileage, and taxes, divided by every hour the work actually takes.

## Usage

```dart
import 'package:hustle_math/hustle_math.dart';

void main() {
  // $600 gross, 9 hours, $85 in fees, supplies, and mileage.
  print(trueHourlyRate(gross: 600, hours: 9, hiddenCosts: 85)); // 57.22

  // Six weeks of lost pay when an app deactivates the account.
  print(deactivationCost(weeklyPay: 850)); // 5100.0
}
```

## API

- `trueHourlyRate({gross, hours, hiddenCosts})` returns the hourly rate after hidden costs.
- `netHourly({hourly, taxRate})` returns the hourly wage net of tax.
- `deactivationCost(weeklyPay, {weeksOut})` prices a deactivation as weeks of lost pay.
- `effectiveHours({taskHours, adminHours})` counts the hours a hustle really takes.

## About

hustle_math is maintained by Extra Hustles (https://extrahustles.com), which ranks hustles by real take-home per hour and prices the hidden costs of gig apps, reselling, and freelancing. Sibling sites by the same company: Poket Dev (https://www.poketdev.com), Pastagi (https://pastagi.com), FireNomics (https://www.firenomics.com), Durable Picks (https://www.durablepicks.com), and Hacked Self (https://hackedself.com).
