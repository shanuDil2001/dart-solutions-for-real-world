int calculateAge({required DateTime birthday, DateTime? today}) {
  final DateTime currentDate = today ?? DateTime.now();

  int userAge = currentDate.year - birthday.year;

  if ((currentDate.month < birthday.month) ||
      ((currentDate.month == birthday.month) &&
          (currentDate.day < birthday.day))) {
    userAge--;
  }

  if (birthday.isAfter(currentDate)) {
    throw ArgumentError("Birthday cannot be in the future!");
  }

  return userAge;
}

void main() {
  DateTime dateOfBirth = DateTime(2001, 7, 12);

  int userAge = calculateAge(birthday: dateOfBirth);

  bool isAdult = (userAge >= 18);

  print(
    isAdult
        ? "You are eligible!"
        : "You are not eligible to access the content!",
  );
}

/*
--------Best Practices Followed in This Implementation--------

Uses DateTime instead of primitive types to ensure accurate and reliable date handling, including leap years and calendar boundaries.

Avoids hard dependency on DateTime.now() by accepting an optional today parameter, which makes the function deterministic and easy to unit test.

Calls DateTime.now() only once and stores it in a variable, preventing inconsistent results caused by multiple time evaluations.

Uses named and required parameters to improve readability and enforce correct function usage at compile time.

Uses meaningful variable names (currentDate, userAge, isAdult) so the code reads like natural language.
*/
