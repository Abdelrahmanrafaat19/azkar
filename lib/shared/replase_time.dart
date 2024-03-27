import 'package:flutter/material.dart';

int getHour(String time) {
  try {
    String cleanedTime = replaceArabicNumerals(time);

    // Extract the hour part
    int hour = int.parse(cleanedTime.split(':')[0]);

    // If PM, add 12 to the hour
    if (cleanedTime.toLowerCase().contains('pm')) {
      hour += 12;
    }

    return hour;
  } catch (e) {
    debugPrint('Error parsing hour: $e');
    return 0;
  }
}

int getMinute(String time) {
  try {
    String cleanedTime = replaceArabicNumerals(time);

    // Extract the minutes part
    int minutes =
        int.parse(cleanedTime.split(':')[1].replaceAll(RegExp('[^0-9]'), ''));

    return minutes;
  } catch (e) {
    debugPrint('Error parsing minute: $e');
    return 0;
  }
}

String replaceArabicNumerals(String input) {
  // Map Arabic numerals to standard numerals
  Map<String, String> arabicToStandard = {
    '٠': '0',
    '١': '1',
    '٢': '2',
    '٣': '3',
    '٤': '4',
    '٥': '5',
    '٦': '6',
    '٧': '7',
    '٨': '8',
    '٩': '9',
    'ص': 'AM',
    'م': 'PM',
  };

  // Replace Arabic numerals in the input string
  String cleanedInput = input;
  arabicToStandard.forEach((arabic, standard) {
    cleanedInput = cleanedInput.replaceAll(arabic, standard);
  });

  return cleanedInput;
}
