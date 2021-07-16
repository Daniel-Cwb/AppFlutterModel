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
      theme: ThemeData(
        bottomAppBarColor: Colors.blueGrey[700],
        buttonColor: Colors.blueGrey[700],
        backgroundColor: Colors.brown[700],
        primaryColor: Colors.red[700],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Calculadora de Combustível',)),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Text('App Desenvolvido pelos alunos de ADS - Senac'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(children: [
            Center(child: Text('Vamos economizar?', style: TextStyle(fontSize: 30),)),
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
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                onPressed: CalculadoraCombustivel,
                child: Text('Calcular'),
                ),
            ),
            Center(child: Text('\nO melhor combustível é: ', style: TextStyle(fontSize: 18),)),
            Text('\n $melhorCombustivel', style: TextStyle(fontSize: 28),),
          ]),
        ),
      ),
    );
  }
}
