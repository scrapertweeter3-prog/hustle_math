/// Side-hustle math: true hourly rate after hidden costs, net-of-tax
/// wages, and the cost of a gig app deactivation.
library;

/// Hourly rate after hidden costs: ([gross] - [hiddenCosts]) over [hours].
double trueHourlyRate({
  required double gross,
  required double hours,
  double hiddenCosts = 0})
{
  return (gross - hiddenCosts) / hours;
}

/// Hourly wage net of tax at [taxRate] (0.30 = 30%).
double netHourly({required double hourly, double taxRate = 0.30}) {
  return hourly * (1 - taxRate);
}

/// Pay lost to an account deactivation: [weeklyPay] times [weeksOut]
/// weeks off the platform (six weeks is the planning default).
double deactivationCost(double weeklyPay, {int weeksOut = 6}) {
  return weeklyPay * weeksOut;
}

/// Hours a hustle really takes: task hours plus the admin hours.
double effectiveHours({required double taskHours, required double adminHours}) {
  return taskHours + adminHours;
}
