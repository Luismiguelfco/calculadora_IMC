import 'dart:convert';
import 'dart:io';

class Pessoa {
  String nome = "";
  double altura = 0;
  double peso = 0;

  //Pessoa(this.nome, this.altura, this.peso);
}

void main() {
  Pessoa pessoa1 = Pessoa();

  print("Digite seu nome");
  pessoa1.nome = stdin.readLineSync(encoding: utf8) ?? "";
  print("Digite sua altura");
  pessoa1.altura = double.parse(stdin.readLineSync(encoding: utf8) ?? "");
  print("Digite seu peso");
  pessoa1.peso = double.parse(stdin.readLineSync(encoding: utf8) ?? "");

  double imc = pessoa1.peso / (pessoa1.altura * pessoa1.altura);

  print(imc.toStringAsPrecision(3));

  if (imc < 18.6) {
    print("Abaixo do Peso ");
  } else if (imc >= 18.6 && imc < 24.9) {
    print("Peso Ideal ");
  } else if (imc >= 24.9 && imc < 29.9) {
    print("Levemente Acima do Peso");
  } else if (imc >= 29.9 && imc < 34.9) {
    print("Obesidade Grau I");
  } else if (imc >= 34.9 && imc < 39.9) {
    print("Obesidade Grau II");
  } else if (imc >= 40) {
    print("Obesidade Grau III");
  }
}
