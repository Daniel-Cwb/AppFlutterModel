main() {
  for (int a = 1; a <= 10; a += 2) {
    print('a1 = $a');
  }

  for (int a = 100; a >= 0; a -= 4) {
    print('a2 = $a');
  }

  int b = 0;
  for (; b <= 10; b++) {
    print('b = $b');
  }

  print('[FORA] b = $b');
  print('Fim!');
}
