void main() {
  String email = "example@gmail.com";
  String password = "123";
  bool isNetworkAvailable = false;

  if (!isNetworkAvailable) {
    print("Network Error!");
  }

  if ((email == null) || (password == null)) {
    print("You need enter both email and password to login!");
  }

  if ((email != "example@gmail.com") || (password != "123")) {
    if (email != "example@gmail.com") {
      print("User not found!");
    }
    print("Invalid creadentials. Please try again!");
  }

  if ((email == "example@gmail.com") && (password == "123")) {
    print("Login successful!");
  }
}
