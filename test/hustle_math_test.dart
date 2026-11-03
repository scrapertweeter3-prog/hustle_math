import 'package:test/test.dart';
import 'package:hustle_math/hustle_math.dart';

void main() {
  test('true hourly rate after hidden costs', () {
    expect(trueHourlyRate(gross: 600, hours: 9, hiddenCosts: 85),
        closeTo(57.22, 0.01));
  });

  test('net hourly', () {
    expect(netHourly(hourly: 50, taxRate: 0.30), closeTo(35, 1e-9));
  });

  test('deactivation cost', () {
    expect(deactivationCost(850), 5100.0);
  });
}
