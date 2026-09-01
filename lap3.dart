import 'dart:io';

void main() {
  //Default rate
  double rateUsd = 4100.0;
  double rateEur = 6000.0;
  double rateYuan = 600.0;

  int? option;

  do {
    print("\nConverter");
    print("1. Input rates");
    print("2. Exchange");
    print("0. Exit");
    stdout.write("Choose an option: ");

    option = int.tryParse(stdin.readLineSync() ?? '');

    switch (option) {
      case 1:
        // Custom exchange rate
        stdout.write("Enter rate for 1 Dollar (Riel): ");
        rateUsd = double.parse(stdin.readLineSync()!);

        stdout.write("Enter rate for 1 Euro (Riel): ");
        rateEur = double.parse(stdin.readLineSync()!);

        stdout.write("Enter rate for 1 Yuan (Riel): ");
        rateYuan = double.parse(stdin.readLineSync()!);

        print("Rates updated successfully!");
        break;

      case 2:
        // Amount to exchange
        stdout.write("\nEnter amount of Khmer Riel you want to convert : ");
        double riel = double.parse(stdin.readLineSync()!);

        print("\n1 dollar = ${rateUsd.toStringAsFixed(0)} Riel");
        print("1 Euro = ${rateEur.toStringAsFixed(0)} Riel");
        print("1 Yuan = ${rateYuan.toStringAsFixed(0)} Riel");

        // Calculate conversions
        double usdAmount = riel / rateUsd;
        double eurAmount = riel / rateEur;
        double yuanAmount = riel / rateYuan;

        // Display results
        print(
          "\n${riel.toStringAsFixed(0)} Riel is equivalent to "
          "${usdAmount.toStringAsFixed(2)} USD, "
          "${eurAmount.toStringAsFixed(2)} EUR and "
          "${yuanAmount.toStringAsFixed(2)} Yuan",
        );
        break;

      case 0:
        print("Exiting the program. Goodbye!");
        break;

      default:
        print("Invalid option!");
    }
  } while (option != 0);
}
