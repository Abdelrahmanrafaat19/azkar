import 'package:adhan/adhan.dart';
import 'package:intl/intl.dart';

List getAdhanTimeMethod() {
  final myCoordinates = Coordinates(
      30.560455, 31.007635); // Replace with your own location lat, lng.
  final params = CalculationMethod.karachi.getParameters();
  params.madhab = Madhab.hanafi;
  final prayerTimes = PrayerTimes.today(myCoordinates, params);

  return [
    DateFormat.jm().format(prayerTimes.fajr),
    DateFormat.jm().format(prayerTimes.sunrise),
    DateFormat.jm().format(prayerTimes.dhuhr),
    DateFormat.jm().format(prayerTimes.asr),
    DateFormat.jm().format(prayerTimes.maghrib),
    DateFormat.jm().format(prayerTimes.isha)
  ];
}
