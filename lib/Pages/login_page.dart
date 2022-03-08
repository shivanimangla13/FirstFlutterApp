import 'package:first_application/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoginButtonCLicked = false;
  final _key = GlobalKey<FormState>();
  void onLogin() async {
    if (_key.currentState!.validate()) {
      setState(() {
        isLoginButtonCLicked = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        isLoginButtonCLicked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int a = 30;

    return Scaffold(
      appBar: AppBar(
        title: const Text("WELCOME"),
        backgroundColor: Colors.deepPurple,
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _key,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                  height: 150,
                ),
                const SizedBox(height: 10),
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Email or phone number'),
                        onChanged: (data) {},
                        validator: (value) {
                          if (value == "") {
                            return "Email cannot be blank";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: 'Password *'),
                        cursorColor: Colors.black,
                        validator: (value) {
                          if (value == "") {
                            return "Password cannot be blank";
                          } else if (value!.length < 6) {
                            return "Password should be greater than 6 characters";
                          }
                          return null;
                        },
                      ),
                    ])),
                Material(
                    color: Colors.deepPurple,
                    borderRadius:
                        BorderRadius.circular(isLoginButtonCLicked ? 25 : 8),
                    child: InkWell(
                      onTap: () {
                        onLogin();
                      },
                      child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: 50,
                          width: isLoginButtonCLicked ? 50 : 150,
                          child: Text(isLoginButtonCLicked ? "@" : "Login",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          alignment: Alignment.center),
                    ))
              ],
            )),
      ),
      backgroundColor: Colors.white,
    );
  }
}
