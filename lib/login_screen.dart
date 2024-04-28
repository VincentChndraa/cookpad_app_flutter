import 'package:cookpad/home_page.dart';
import 'package:cookpad/widget/button2custom.dart';
import 'package:cookpad/widget/button_custom.dart';
import 'package:cookpad/widget/textfield_custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("Login Page",
      //       style: TextStyle(
      //           color: Colors.grey[850], fontWeight: FontWeight.bold)),
      // ),
      backgroundColor: Color(0xFFF8F6F2),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // row ke 1
                Column(
                  children: [
                    Text(
                      "Masuk",
                      style: TextStyle(
                        color: Color.fromRGBO(74, 74, 74, 1),
                        fontWeight: FontWeight.w900,
                        fontSize: 27.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "dari jutaan resep yang ada",
                      style: TextStyle(
                          fontSize: 16.0, color: Color.fromRGBO(74, 74, 74, 1)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),

                // row ke 2
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFieldCustom(
                        ctrl: _emailController,
                        hint: "Email",
                        icon: Icons.email_outlined,
                      ),
                      const SizedBox(height: 15),
                      TextFieldCustom(
                        ctrl: _passwordController,
                        hint: "Password",
                        icon: Icons.lock_outline,
                        isObscureText: true,
                      ),
                      const SizedBox(height: 5)
                    ],
                  ),
                ),

                // row ke 3
                ButtonCustom(onPressed: _handleLogin, label: "Masuk"),
                const SizedBox(height: 20),

                // row ke 4
                Text(
                  "Lupa kata sandi kamu?",
                  style: TextStyle(
                    color: Color.fromRGBO(74, 74, 74, 1),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 25),

                // row ke 5 - divider
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("atau"),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),

                // row ke 6
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Button2Custom(
                      onPressed: () {},
                      label: "Masuk dengan Facebook",
                      imagePath: "assets/images/facebook.png",
                    ),
                    const SizedBox(height: 10),
                    Button2Custom(
                      onPressed: () {},
                      label: "Masuk dengan Google",
                      imagePath: "assets/images/google.png",
                    ),
                    const SizedBox(height: 10),
                    Button2Custom(
                      onPressed: () {},
                      label: "Masuk dengan Apple",
                      imagePath: "assets/images/apple_logo.png",
                    ),
                    const SizedBox(height: 20)
                  ],
                ),

                // row ke 7
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum punya akun?"),
                    const SizedBox(width: 4.0),
                    Text(
                      "Daftar",
                      style: TextStyle(
                          color: Colors.grey[850], fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
    ;
  }
}
