import 'dart:io';

void main() {
  stdout.write("Enter number of subjects: ");
  String inputSub = stdin.readLineSync() ?? '0';
  int scores = int.parse(inputSub);
  double totalScores = 0;
  for (int i = 1; i <= scores; i++) {
    stdout.write("Enter score for subject $i: ");
    String inputScore = stdin.readLineSync() ?? '0';
    double mark = double.parse(inputScore);
    totalScores = totalScores + mark;
  }

  double percen = totalScores / scores;
  String grade = "";

  if (percen > 85) {
    grade = "A grade";
  } else if (percen < 85 && percen >= 75) {
    grade = "B grade";
  } else if (percen < 75 && percen >= 50) {
    grade = "C grade";
  } else if (percen > 30 && percen <= 50) {
    grade = "D grade";
  } else if (percen < 30) {
    grade = "fail";
  }
  print("\n------------------------");
  print("Total Score : $totalScores");
  print("Percentage  : $percen %");
  print("Grade       : $grade");
  print("------------------------");
}
