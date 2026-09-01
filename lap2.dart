import 'dart:io';

void main() {
  // 1. input Customer ID, Name, and Units consumed
  stdout.write("Enter Customer ID: ");
  String customerId = stdin.readLineSync()!;

  stdout.write("Enter Customer Name: ");
  String customerName = stdin.readLineSync()!;

  stdout.write("Enter Units Consumed: ");
  double units = double.parse(stdin.readLineSync()!);

  // 2. Determine Charge per unit based on consumed units
  double rate;
  if (units <= 199) {
    rate = 500;
  } else if (units >= 200 && units < 400) {
    rate = 100;
  } else if (units >= 400 && units < 600) {
    rate = 150;
  } else {
    rate = 200; // 600 and above
  }

  // Calculate base amount
  double totalAmount = units * rate;
  double surcharge = 0;

  // 3. Apply 15% surcharge if bill exceeds 500,000 R
  if (totalAmount > 500000) {
    surcharge = totalAmount * 0.15;
    totalAmount += surcharge;
  }

  // 4. Ensure minimum bill is 1000 R
  if (totalAmount < 1000) {
    totalAmount = 1000;
  }

  // 5. Display the electricity bill
  print("\n==================================");
  print("         ELECTRICITY BILL         ");
  print("==================================");
  print("Customer ID         : $customerId");
  print("Customer Name       : $customerName");
  print("Units Consumed      : $units");
  print("Amount Charges @ $rate per unit : R ${units * rate}");
  if (surcharge > 0) {
    print("Surcharge Amount (15%)          : R $surcharge");
  }
  print("----------------------------------");
  print("Net Total Amount To Pay          : R $totalAmount");
  print("==================================");
}
