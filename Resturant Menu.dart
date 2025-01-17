import 'dart:io';

void main() {
  ("Restaurant Menu");
  print("=== Restaurant Menu ===");
  print("Our menu includes the following categories:");

  List<String> menuCategories = [
    "1. Samosa",
    "2. Chicken Roll",
    "3. zinger",
    "4. Biryani",
  ];

  for (String category in menuCategories) {
    print(category);
  }

 
 
}