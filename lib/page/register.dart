import 'package:cookpad/login_screen.dart';
import 'package:cookpad/widget/button_custom.dart';
import 'package:cookpad/widget/textfield_custom.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  void _handleSignUp() {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    if (username == "test" &&
        email == "test@gmail.com" &&
        password == "test123" &&
        confirmPassword == "test123") {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (_) => LoginScreen()), (route) => false);
    } else {
      print("Registrasi gagal");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xFFF8F6F2),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Section 1 - Title and Subtitle
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Daftar dengan Email",
                      style: TextStyle(
                        color: Color.fromARGB(74, 74, 74, 1),
                        fontWeight: FontWeight.w900,
                        fontSize: 27.0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "silahkan masukkan username, email dan kata sandi",
                      style: TextStyle(
                          fontSize: 16.0, color: Color.fromRGBO(74, 74, 74, 1)),
                    )
                  ],
                ),

                // Section 2 - Input
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFieldCustom(
                        ctrl: _usernameController,
                        hint: "Nama Pengguna",
                        icon: Icons.person_outline,
                      ),
                      const SizedBox(height: 15),
                      TextFieldCustom(
                        ctrl: _emailController,
                        hint: "Email",
                        icon: Icons.email_outlined,
                      ),
                      const SizedBox(height: 15),
                      TextFieldCustom(
                        ctrl: _passwordController,
                        hint: "Kata Sandi",
                        icon: Icons.lock_outline,
                      ),
                      const SizedBox(height: 15),
                      TextFieldCustom(
                        ctrl: _confirmPasswordController,
                        hint: "Konfirmasi Kata Sandi",
                        icon: Icons.lock_outline,
                      ),
                      const SizedBox(height: 5)
                    ],
                  ),
                ),

                // Section 3 - Button
                ButtonCustom(
                  onPressed: _handleSignUp,
                  label: "Buat Akun",
                  backgroundColor: Color.fromRGBO(241, 158, 75, 1),
                  foregroundColor: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
