// ignore_for_file: duplicate_import, prefer_const_constructors

import 'package:first_flutter_app/widgets/myDrawer.dart';
import 'package:flutter/material.dart';
import '../widgets/myDrawer.dart';

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
        drawer: MyDrawer());
  }
}
