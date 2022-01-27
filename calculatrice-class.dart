class Calculatrice {
  double val1 = 0;
  double val2 = 0;
  String op = "";

  Calculatrice(double val1, double val2, String op) {
    this.val1 = val1;
    this.val2 = val2;
    this.op = op;
  }

  double Calcule() {
    if (op == '+') return val1 + val2;
    if (op == '-') return val1 - val2;
    if (op == '*') return val1 * val2;
    if (op == '%') {
      if (val2 != 0) return val1 % val2;
    }
    if (op == '/') {
      if (val2 != 0) return val1 / val2;
    }
    return 0;
  }
}
