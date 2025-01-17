import 'dart:io';

void main() {
  ("Payment Options");
  print("=== Restaurant Payment Methods ===");
  print("Please choose a payment method:");

  // Display available payment options
  List<String> paymentMethods = [
    "1. Cash",
    "2. Credit/Debit Card",
    "3. Mobile Payment (e.g., PayPal, Google Pay)",
    "4. Exit"
  ];

  for (String method in paymentMethods) {
    print(method);
  }

  print("\nEnter the number corresponding to your payment method:");

  String? choice = stdin.readLineSync();
  int selectedMethod = int.tryParse(choice ?? "0") ?? 0;

  // Process payment based on the selection
  switch (selectedMethod) {
    case 1:
      processCashPayment();
      break;
    case 2:
      processCardPayment();
      break;
    case 3:
      processMobilePayment();
      break;
    case 4:
      print("Returning to the main menu...");
      break;
    default:
      print("Invalid choice. Please choose a valid payment method.");
      break;
  }
}

// Process Cash Payment
void processCashPayment() {
  print("You chose Cash payment.");
  print("Please enter the amount you are paying:");
  String? amount = stdin.readLineSync();
  double cashAmount = double.tryParse(amount ?? "0") ?? 0;

  if (cashAmount > 0) {
    print("You have paid \$${cashAmount}. Thank you for your payment!");
  } else {
    print("Invalid amount entered. Please try again.");
  }
}

// Process Credit/Debit Card Payment
void processCardPayment() {
  print("You chose Credit/Debit Card payment.");
  print("Please enter your card number (16 digits):");
  String? cardNumber = stdin.readLineSync();

  if (cardNumber != null && cardNumber.length == 16) {
    print("Please enter the card's expiration date (MM/YY):");
    String? expiryDate = stdin.readLineSync();

    print("Please enter the card's CVV code (3 digits):");
    String? cvv = stdin.readLineSync();

    if (expiryDate != null && cvv != null) {
      print("Card payment processed. Thank you for your payment!");
    } else {
      print("Invalid card details entered. Payment failed.");
    }
  } else {
    print("Invalid card number. Payment failed.");
  }
}

// Process Mobile Payment
void processMobilePayment() {
  print("You chose Mobile Payment.");
  print("Please choose your mobile payment provider:");
  print("1. PayPal");
  print("2. Google Pay");
  print("3. Apple Pay");
  String? choice = stdin.readLineSync();

  if (choice == "3" || choice == "2" || choice == "1") {
    print("Processing your payment via selected mobile provider...");
    print("Payment successful! Thank you for choosing mobile payment.");
  } else {
    print("Invalid choice. Payment failed.");
  }
}
