import 'dart:io';

void main() {
  print("--- Pattern (a) ---");
  for (int i = 1; i <= 8; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("# ");
    }
    print("");
  }

  print("\n--- Pattern (b) ---");
  for (int i = 8; i >= 1; i--) {
    for (int j = 1; j <= i; j++) {
      stdout.write("# ");
    }
    print("");
  }

  print("\n--- Pattern (c) ---");
  for (int i = 8; i >= 1; i--) {
    for (int s = 1; s <= 8 - i; s++) {
      stdout.write("  ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("# ");
    }
    print("");
  }

  print("\n--- Pattern (d) ---");
  for (int i = 1; i <= 8; i++) {
    for (int s = 1; s <= 8 - i; s++) {
      stdout.write("  ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("# ");
    }
    print("");
  }

  print("\n--- Pattern (e) ---");
  int sizeE = 7;
  for (int i = 1; i <= sizeE; i++) {
    for (int j = 1; j <= sizeE; j++) {
      if (i == 1 || i == sizeE || j == 1 || j == sizeE) {
        stdout.write("# ");
      } else {
        stdout.write("  ");
      }
    }
    print("");
  }

  print("\n--- Pattern (f) ---");
  int sizeF = 7;
  for (int i = 1; i <= sizeF; i++) {
    for (int j = 1; j <= sizeF; j++) {
      if (i == 1 || i == sizeF || i + j == sizeF + 1) {
        stdout.write("# ");
      } else {
        stdout.write("  ");
      }
    }
    print("");
  }

  print("\n--- Pattern (g) ---");
  int sizeG = 7;
  for (int i = 1; i <= sizeG; i++) {
    for (int j = 1; j <= sizeG; j++) {
      if (i == 1 || i == sizeG || i == j) {
        stdout.write("# ");
      } else {
        stdout.write("  ");
      }
    }
    print("");
  }

  print("\n--- Pattern (h) ---");
  int sizeH = 7;
  for (int i = 1; i <= sizeH; i++) {
    for (int j = 1; j <= sizeH; j++) {
      if (i == 1 || i == sizeH || i == j || i + j == sizeH + 1) {
        stdout.write("# ");
      } else {
        stdout.write("  ");
      }
    }
    print("");
  }

  print("\n--- Pattern (i) ---");
  int sizeI = 7;
  for (int i = 1; i <= sizeI; i++) {
    for (int j = 1; j <= sizeI; j++) {
      if (i == 1 ||
          i == sizeI ||
          j == 1 ||
          j == sizeI ||
          i == j ||
          i + j == sizeI + 1) {
        stdout.write("# ");
      } else {
        stdout.write("  ");
      }
    }
    print("");
  }
}
