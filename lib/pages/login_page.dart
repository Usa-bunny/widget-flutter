import 'package:flutter/material.dart';
import 'package:learn_flutter/components/checkbox.dart';
import 'package:learn_flutter/components/field.dart';
import 'package:learn_flutter/components/header.dart';
import 'package:learn_flutter/pages/menu_page.dart';
import 'package:learn_flutter/pages/register_page.dart';

// Widget StatefulWidget
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
  bool _isPasswordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyHeader(
              title: 'Selamat Datang',
              subtitle: 'Silakan login untuk melanjutkan',
              icon: Icons.lock_sharp,
            ),
            SizedBox(height: 28),
            Container(
              padding: EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyField(
                    text: "Email",
                    placeholder: "Masukkan email",
                    icon: Icons.email_sharp,
                    type: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 18),
                  MyField(
                    text: "Password",
                    placeholder: "Masukkan password",
                    icon: Icons.lock_sharp,
                    type: TextInputType.visiblePassword,
                    isPassword: true,
                    isObscured: _isPasswordObscured,
                    onToggleVisibility: () {
                      setState(() {
                        _isPasswordObscured = !_isPasswordObscured;
                      });
                    },
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyCheckbox(
                        label: 'Ingat saya',
                        value: _rememberMe,
                        onChanged: (newValue) {
                          setState(() {
                            _rememberMe = newValue ?? false;
                          });
                        },
                      ),
                      Text(
                        'Lupa Password?',
                        style: TextStyle(
                          color: Colors.yellow[700],
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => MenuPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[700],
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      child: Text(
                        'Login'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text(
                'Belum punya akun? Register',
                style: TextStyle(
                  color: Colors.yellow[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
