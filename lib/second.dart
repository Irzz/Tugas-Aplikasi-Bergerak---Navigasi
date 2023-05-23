import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_navigation/main.dart';

class MyWidget extends StatelessWidget {
  final String parameter;
  final String parameter2;
  const MyWidget(
      {super.key, required this.parameter, required this.parameter2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Dua"),
      ),
      body: Column(
        children: [
          Text("Login Berhasil"),
          Text(this.parameter2),
          ElevatedButton(
              child: const Text("Kembali"),
              onPressed: () {
                Navigator.pop(context);
              }),
          ElevatedButton(
              child: const Text("Logout"),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const MyApp(),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
