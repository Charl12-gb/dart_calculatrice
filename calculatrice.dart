import 'dart:io';

double Calcul(double a, double b, String typeop) {
  if (identical(typeop, '+')) return a + b;
  if (identical(typeop, '-')) return a - b;
  if (identical(typeop, '*')) return a * b;
  if (identical(typeop, '%')) {
    if (b != 0) return a % b;
  }
  if (identical(typeop, '/')) {
    if (b != 0) return a / b;
  }
  return 0;
}

void main(List<String> args) {
  var a, b;
  var op;
  double a1, b1;
  double resultat;
  var reponse;

  do {
    print("Valeur a :");
    a = stdin.readLineSync();
    a1 = double.parse(a);

    print("Operation (+, -, *, /, %)");
    op = stdin.readLineSync();

    print("Valeur b :");
    b = stdin.readLineSync();
    b1 = double.parse(b);

    resultat = Calcul(a1, b1, op);

    print(resultat);

    print("Faire une autre opération ? (o/n)");
    reponse = stdin.readLineSync();
  } while (reponse == 'o');
}
