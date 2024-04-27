import 'package:cookpad/home_page.dart';
import 'package:cookpad/widget/button_custom.dart';
import 'package:cookpad/widget/textfield_custom.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  void _handleLogin() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email == "admin" && password == "password") {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => HomePageScreen()),
          (route) => false);
    } else {
      print("Login Gagal");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Page",
            style: TextStyle(
                color: Colors.grey[850], fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Color(0xFFF8F6F2),
      body: ListView(
        children: [
          Column(
            children: [
              // row ke 1
              Column(
                children: [
                  Text(
                    "Masuk",
                    style: TextStyle(
                      color: Colors.grey[850],
                      fontWeight: FontWeight.bold,
                      fontSize: 27.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "dari jutaan resep yang ada",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),

              // row ke 2
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFieldCustom(
                      ctrl: _emailController,
                      hint: "Email",
                      icon: Icons.email,
                    ),
                    TextFieldCustom(
                      ctrl: _passwordController,
                      hint: "Password",
                      icon: Icons.password,
                    ),
                    ButtonCustom(onPressed: _handleLogin, label: "Login")
                  ],
                ),
              ),

              // row ke 3
              Text("Lupa kata sandi kamu?")
              // row ke 4
            ],
          )
        ],
      ),
    );
    ;
  }
}
