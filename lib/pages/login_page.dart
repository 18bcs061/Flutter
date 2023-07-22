// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Column(children: [
                TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter UserName", labelText: "UserName")),
                TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Password")),
                const SizedBox(height: 40),
                ElevatedButton(
                    onPressed: () {
                      print("Login sucessfully");
                    },
                    style: TextButton.styleFrom(),
                    child: const Text("Login"))
              ]),
            )
          ],
        ));
  }
}
