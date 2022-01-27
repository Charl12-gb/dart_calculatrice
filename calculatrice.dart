import 'dart:io';
import 'calculatrice-class.dart';

void main(List<String> args) {
  Calculatrice cal;
  var a, b;
  var op;
  double a1, b1;
  double result = 0;
  var reponse;
  var choix;
  var cont = false;

  do {
    if (cont == false) {
      print("Valeur a :");
      a = stdin.readLineSync().toString();
      a1 = double.parse(a);

      print("Operation (+, -, *, /, %)");
      op = stdin.readLineSync().toString();

      print("Valeur b :");
      b = stdin.readLineSync().toString();
      b1 = double.parse(b);

      cal = Calculatrice(a1, b1, op);
      result = cal.Calcule();
      print(cal.Calcule());

      print("Continuer la même opération ? (o/n)");
      choix = stdin.readLineSync().toString();
      if(choix == 'o'){
        cont = true;
      }
    }else{
      print("Operation (+, -, *, /, %)");
      op = stdin.readLineSync().toString();

      print("Valeur b :");
      b = stdin.readLineSync().toString();
      b1 = double.parse(b);

      cal = Calculatrice(result, b1, op);
      result = cal.Calcule();
      print(cal.Calcule());

      print("Continuer la même opération ? (o/n)");
      choix = stdin.readLineSync().toString();
      if(choix == 'o'){
        cont = true;
      }else{
        cont = false;
      }
    }
    if(cont == false){
      result = 0.0;
      print("Faire une autre opération ? (o/n)");
      reponse = stdin.readLineSync();
    }else{
      reponse = 'o';
    }
  } while (reponse == 'o');
}
