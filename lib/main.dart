import 'package:flutter/material.dart';
import 'package:qr_code/qr_view.dart';

void main() => runApp(const MaterialApp(home: MyHome()));

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('Scanner App')),
          body: Center(
            child: ElevatedButton(
              child: const Text('Scan now'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const QRViewExample(),
                ));
              },
            ),
          ),
        ),
      ),
    );
  }
}
