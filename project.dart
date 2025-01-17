import 'dart:io';

List<String> screen = [];

void main() {
  print("==== Welcome To My Restaurant Application ====");
  
  var isContinue = true;
  while (isContinue) {
    print("2Please choose an option:");
    print("1. Login screen");
    print("2. Signup screen");
    print("3. Home screen");
    print("4. Menu screen");
    print("5. Exit");

    var userInput = stdin.readLineSync();

    if (userInput == "1") {
      loginScreen();
    } else if (userInput == "2") {
      signupScreen();
    } else if (userInput == "3") {
      homeScreen();
    } else if (userInput == "4") {
      menuScreen();
    } else if (userInput == "5") {
      print("Program ended");
      isContinue = false;
    } else {
      print("Invalid input. Please choose a valid option.");
    }
  }
}

// Login screen function
void loginScreen() {
  print("You are on the login screen.");
  // Add login logic here
  screen.add("Login screen activated");
}

// Signup screen function
void signupScreen() {
  print("You are on the signup screen.");
  // Add signup logic here
  screen.add("Signup screen activated");
  print("My screen history: $screen");
}

// Home screen function
void homeScreen() {
  print("Welcome to the Home Screen!");
  // Add home screen logic here
}

// Menu screen function
void menuScreen() {
  print("Welcome to the Menu Screen!");
  // Add menu logic here
}
