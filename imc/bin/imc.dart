import 'dart:io';

import 'pessoa.dart';

double calcularIMC(Pessoa pessoa) {
  if (pessoa.altura <= 0 || pessoa.peso <= 0) {
    throw ArgumentError('Altura e peso devem ser números positivos.');
  }
  return pessoa.peso / (pessoa.altura * pessoa.altura);
}

void main() {
  try {
    stdout.write('Digite o nome da pessoa: ');
    String nome = stdin.readLineSync()!;
    
    stdout.write('Digite o peso da pessoa (em kg): ');
    double peso = double.parse(stdin.readLineSync()!);
    
    stdout.write('Digite a altura da pessoa (em metros): ');
    double altura = double.parse(stdin.readLineSync()!);
    
    Pessoa pessoa = Pessoa(nome, peso, altura);
    
    double imc = calcularIMC(pessoa);
    
    print('${pessoa.nome}, seu IMC é: $imc');
  } catch (e) {
    print('Erro: $e');
  }
}
