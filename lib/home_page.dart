import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Data Catalog"),
        ),
        body: const Center(
          child: Text('Welcome to the first app'),
        ),
        drawer: const Drawer());
  }
}
