import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String operador = '';
  String pvalor = '0.0';
  String svalor = '0.0';
  String valor_resultado = '';
  double resultado = 0.0;

  void calculadora() {
    setState(() {
      double p_valor = double.parse(pvalor.toString());
      double s_valor = double.parse(svalor.toString());

      if (operador == '+') {
        resultado = p_valor + s_valor;
        valor_resultado = resultado.toString();

      } else if (operador == '-') {
        resultado = p_valor - s_valor;
        valor_resultado = resultado.toString();

      } else if (operador == '*') {
        resultado = p_valor * s_valor;
        valor_resultado = resultado.toString();

      }else if (operador == '/') {
        resultado = p_valor / s_valor;
        valor_resultado = resultado.toString();

      }else {
        valor_resultado = 'Valor inválido';
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red[700],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Calculadora Simples')),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Text('App Desenvolvido pelos alunos de ADS - Senac'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(children: [
            Center(child: Text('Bora calcular?', style: TextStyle(fontSize: 30),)),
            TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Informe apenas valores númericos. Ex: 5.29',
                  icon: Icon(Icons.money),
                  labelText: 'Informe o primeiro valor: '),
                  onChanged: (valor) {
                    pvalor = valor.replaceAll(',', '.');            
                  },
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Informe apenas valores como: Ex: +, -, * ou /',
                  icon: Icon(Icons.countertops),
                  labelText: 'Informe o tipo de Operação que deseja: '),
                  onChanged: (valor) {
                    operador = valor;            
                  },
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Informe apenas valores númericos. Ex: 4.29',
                  icon: Icon(Icons.money),
                  labelText: 'Informe o segundo valor: '),
                  onChanged: (valor) {
                    svalor = valor.replaceAll(',', '.');            
                  },
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                onPressed: calculadora,
                child: Text('Calcular'),
                ),
            ),
            Center(child: Text('\nO Resultado é:', style: TextStyle(fontSize: 18),)),
            Text('$valor_resultado', style: TextStyle(fontSize: 28),),
          ]),
        ),
      ),
    );
  }
}
