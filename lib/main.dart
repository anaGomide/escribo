import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller = TextEditingController();
  int resultado = 0;

  void calcularSomatorio() {
    int numero = int.tryParse(_controller.text) ?? 0;
    setState(() {
      resultado = somatorioDivisiveis(numero);
    });
  }

  int somatorioDivisiveis(int numero) {
    int somatorio = 0;

    for (int i = 1; i < numero; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        somatorio += i;
      }
    }

    return somatorio;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Somatório de Divisíveis'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite um número',
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calcularSomatorio();
              },
              child: Text('Calcular'),
            ),
            SizedBox(height: 20),
            Text(
              'Resultado: $resultado',
              style: TextStyle(
                fontSize: 18,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  minimumSize: Size(deviceSize.width * 0.9, 54),
                  backgroundColor: const Color(0xFFD0ABFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
