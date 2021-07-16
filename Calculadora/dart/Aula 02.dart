main() {
  var n1 = 10;
  var n2 = 3.14;
  String t1 = "Rodrigo";

  print(n1 + n2);

//exibindo tipo do dado!!
  print(n1.runtimeType);
  print(n2.runtimeType);
  print(t1.runtimeType);

//imprimindo o valor da variável
  print("$t1");

  print(n1 is int);
  print(n1 is String);
}
