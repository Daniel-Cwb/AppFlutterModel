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
  String melhorCombustivel = '';
  String etanol = '0.0';
  String gasolina = '0.0';
  double resultado = 0.0;

  void CalculadoraCombustivel() {
    setState(() {
      double valorEtanol = double.parse(etanol.toString());
      double valorGasolina = double.parse(gasolina.toString());
      resultado = valorEtanol / valorGasolina;
      if (resultado < 0.7) {
        melhorCombustivel = 'Etanol';
      } else if (resultado >= 0.7) {
        melhorCombustivel = 'Gasolina';
      } else {
        melhorCombustivel = 'Erro ao calcular';
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Calculadora de Conbustivel')),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Text('App Desenvolvido pelos alunos de ADS - Senac'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(children: [
            Center(child: Text('Vamos economizar?')),
            TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Informe apenas valores númericos. Ex: 5.29',
                  icon: Icon(Icons.local_gas_station),
                  labelText: 'Informe o valor da gasolina: '),
                  onChanged: (valor) {
                    gasolina = valor.replaceAll(',', '.');            
                  },
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Informe apenas valores númericos. Ex: 4.29',
                  icon: Icon(Icons.local_gas_station),
                  labelText: 'Informe o valor do alcool: '),
                  onChanged: (text) {
                    etanol = text.replaceAll(',', '.');            
                  },
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: ElevatedButton(
                onPressed: CalculadoraCombustivel,
                child: Text('Calcular'),
              ),
            ),
            Center(child: Text('O melhor combustível é: ')),
            Text('$melhorCombustivel'),
          ]),
        ),
      ),
    );
  }
}
