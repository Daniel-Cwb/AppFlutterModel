import 'dart:io';

main() {
  var digitado = '';

  //while (digitado != 'sair') {
  //  stdout.write('Digite algo ou sair (WHILE): ');
  //  digitado = stdin.readLineSync().toString();

 // }

  do {
    print('Digite algo ou sair: ');
    digitado = stdin.readLineSync().toString();
  } while (digitado != 'sair');

  print('Fim!');
}
