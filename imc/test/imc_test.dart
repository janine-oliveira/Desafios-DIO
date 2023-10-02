import 'package:test/test.dart';
import '../bin/imc.dart';
import '../bin/pessoa.dart';

void main() {
  test('Teste de cálculo do IMC', () {
    final pessoa = Pessoa('João', 70, 1.75);
    final imc = calcularIMC(pessoa);

    expect(imc, equals(22.86));
  });
}
