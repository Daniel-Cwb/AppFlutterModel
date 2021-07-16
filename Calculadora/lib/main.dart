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
  double resultado = 0.0;

  void Calculadora() {
    setState(() {
      double p_valor = double.parse(pvalor.toString());
      double s_valor = double.parse(svalor.toString());
      double valor_operador = double.parse(operador.toString());
      if (valor_operador == '+') {
        resultado == (p_valor + s_valor);
      } else if (valor_operador == '-') {
        resultado = (p_valor - s_valor);
      } else if (valor_operador == '*') {
        resultado == (p_valor * s_valor);
      }else if (valor_operador == '/') {
        resultado = p_valor / s_valor;
      }else {
        resultado = 0;
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
                  icon: Icon(Icons.local_gas_station),
                  labelText: 'Informe o primeiro valor: '),
                  onChanged: (valor) {
                    pvalor = valor.replaceAll(',', '.');            
                  },
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Informe apenas valores como: Ex: +, -, * ou /',
                  icon: Icon(Icons.local_gas_station),
                  labelText: 'Informe o tipo de Operação que deseja: '),
                  onChanged: (text) {
                    operador = text.replaceAll(',', '.');            
                  },
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Informe apenas valores númericos. Ex: 4.29',
                  icon: Icon(Icons.local_gas_station),
                  labelText: 'Informe o segundo valor: '),
                  onChanged: (valor) {
                    svalor = valor.replaceAll(',', '.');            
                  },
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                onPressed: Calculadora,
                child: Text('Calcular'),
                ),
            ),
            Center(child: Text('\nO Resultado é', style: TextStyle(fontSize: 18),),
            Text('\n $resultado',),
          ]),
        ),
      ),
    );
  }
}
