main() {
  // Operadores Aritméticos
  int a = 7;
  int b = 3;
  int resultado = a + b;

  print(resultado);
  print(a - b); // Adicao
  print(a * b);// multiplicacao
  print(a / b); //divisao
  print(a % b); // modulo
  print(33 % 2);
  print(34 % 2);
  print(a + (b * a) - (b / a));

  // Operadores Lógicos
  bool ehFragil = true;
  bool ehCaro = true;

  print(ehFragil && ehCaro); // AND -> E
  print(ehFragil || ehCaro); // OR -> OU
  print(ehFragil ^ ehCaro); // XOR -> OU exclusivo
  print(!ehFragil); // NOT -> Unário
  print(!!ehCaro);

  
}
