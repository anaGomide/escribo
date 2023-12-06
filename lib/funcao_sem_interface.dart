int somatorioDivisiveis(int numero) {
  int somatorio = 0;

  for (int i = 1; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      somatorio += i;
    }
  }

  return somatorio;
}

void main() {
  // Exemplo de uso da função
  int numero = 10; // Substitua pelo número desejado
  int resultado = somatorioDivisiveis(numero);

  print(
      "O somatório dos números divisíveis por 3 ou 5 abaixo de $numero é: $resultado");
}
