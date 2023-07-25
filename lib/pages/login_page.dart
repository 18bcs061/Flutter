// ignore_for_file: avoid_print

import 'package:first_flutter_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  // ignore: non_constant_identifier_names
  bool ChangeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        ChangeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        ChangeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                Text(
                  "Welcome $name",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Column(children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter UserName", labelText: "UserName"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be blank";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be blank";
                        } else if (value.length < 6) {
                          return "atleast 6 character required";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 40),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(ChangeButton ? 50 : 20),
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () => moveToHome(context),
                        // async {
                        // setState(() {
                        //   ChangeButton = true;
                        // });
                        // await Future.delayed(const Duration(seconds: 1));
                        // // ignore: use_build_context_synchronously
                        // await Navigator.pushNamed(
                        //     context, MyRoutes.homeRoute);
                        // setState(() {
                        //   ChangeButton = false;
                        // });
                        // },
                        child: AnimatedContainer(
                          width: ChangeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          // decoration: BoxDecoration(
                          //     color: Colors.deepPurple,
                          //     borderRadius:
                          //         BorderRadius.circular(ChangeButton ? 50 : 10)),
                          duration: const Duration(seconds: 1),
                          child: ChangeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     },
                    //     style: TextButton.styleFrom(
                    //         minimumSize: const Size(120, 40)),
                    //     child: const Text("Login"))
                  ]),
                )
              ],
            ),
          ),
        ));
  }
}
