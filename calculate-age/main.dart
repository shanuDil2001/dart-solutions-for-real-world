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
