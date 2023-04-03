import 'package:flutter/material.dart';
import 'package:teste_funcionalidades/pages/barcode.dart';
import 'package:teste_funcionalidades/pages/leitordigital.dart';
import 'package:teste_funcionalidades/pages/qrcode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'barcode': (context) => BarcodeScanner(),
        'qrcode': (context) => QrCode(),
        'fingerprint': (context) => FingerprintReader(),
      },
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teste de Funcionalidades"),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'barcode');
            },
            child: const Text("Código de Barras"),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'qrcode');
            },
            child: const Text("Código QR"),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'fingerprint');
            },
            child: const Text("Leitor de Digital"),
          ),
        ],
      ),
    );
  }
}
