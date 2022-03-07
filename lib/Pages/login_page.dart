import 'package:first_application/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "test";
  bool isLoginButtonCLicked = false;
  @override
  Widget build(BuildContext context) {
    int a = 30;
    return Scaffold(
      appBar: AppBar(
        title: const Text("NETFLIX"),
        backgroundColor: Colors.black,
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.red, fontSize: 50),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
            height: 150,
          ),
          const SizedBox(height: 10),
          Text(name),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Email or phone number',
                      fillColor: Colors.grey,
                      filled: true),
                  cursorColor: Colors.white,
                  onChanged: (data) {
                    setState(() {
                      name = "data";
                    });
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Password *'),
                  cursorColor: Colors.black,
                ),
              ])),
          InkWell(
              onTap: () async {
                setState(() {
                  isLoginButtonCLicked = !isLoginButtonCLicked;
                });
                await Future.delayed(const Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 50,
                width: isLoginButtonCLicked ? 50 : 150,
                child: Text(isLoginButtonCLicked ? "@" : "Login",
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius:
                        BorderRadius.circular(isLoginButtonCLicked ? 25 : 8)),
              ))

          // ElevatedButton(
          //   onPressed: () => {Navigator.pushNamed(context, MyRoutes.homeRoute)},
          //   child: const Text("Login"),
          //   style: ButtonStyle(
          //       fixedSize: MaterialStateProperty.all<Size>(const Size(320, 50)),
          //       foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          //       backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
          // )
        ],
      )),
      backgroundColor: Colors.white,
    );
  }
}
