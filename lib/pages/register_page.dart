import 'package:flutter/material.dart';
import 'package:learn_flutter/components/checkbox.dart';
import 'package:learn_flutter/components/dropdown.dart';
import 'package:learn_flutter/components/field.dart';
import 'package:learn_flutter/components/header.dart';
import 'package:learn_flutter/components/radio.dart';
import 'package:learn_flutter/components/slider.dart';
import 'package:learn_flutter/components/switch.dart';
import 'package:learn_flutter/pages/login_page.dart';

// Widget StatefulWidget
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isPasswordObscured = true;
  double _experienceValue = 0.0;
  bool _isNotificationActive = true;
  bool _acceptTerms = false;

  String _genderSelected = '';
  final List<String> _genderList = ["Laki-laki", "Perempuan"];

  String? _educationSelected;
  final List<String> _educationList = [
    'SD / Sederajat',
    'SMP / Sederajat',
    'SMA / SMK',
    'Diploma (D3)',
    'Sarjana (S1)',
    'Magister (S2)',
    'Doktor (S3)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyHeader(
              title: 'Buat Akun Baru',
              subtitle: 'Silakan lengkapi data untuk membuat akun',
              icon: Icons.person_add_alt_1_sharp,
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
                    text: "Nama Lengkap",
                    placeholder: "Masukkan nama lengkap",
                    icon: Icons.person_sharp,
                    type: TextInputType.name,
                  ),
                  SizedBox(height: 18),
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
                  SizedBox(height: 20),
                  Divider(color: Colors.grey.shade200, thickness: 1),
                  SizedBox(height: 16),
                  MyRadio(
                    text: 'Jenis Kelamin',
                    selectedValue: _genderSelected,
                    options: _genderList,
                    onChanged: (String? value) {
                      if (value != null) {
                        setState(() {
                          _genderSelected = value;
                        });
                      }
                    },
                  ),
                  SizedBox(height: 18),
                  MyDropdown(
                    text: "Pendidikan",
                    selectedValue: _educationSelected,
                    placeholder: 'Pilih pendidikan',
                    icon: Icons.school_sharp,
                    items: _educationList,
                    onChanged: (newValue) {
                      setState(() {
                        _educationSelected = newValue;
                      });
                    },
                  ),
                  SizedBox(height: 18),
                  MySlider(
                    text: 'Tingkat Pengalaman',
                    value: _experienceValue,
                    minLabel: "Pemula",
                    maxLabel: "Ahli",
                    onChanged: (double value) {
                      setState(() {
                        _experienceValue = value;
                      });
                    },
                  ),
                  SizedBox(height: 18),
                  MyField(
                    text: "Alamat",
                    placeholder: "Masukkan alamat",
                    icon: Icons.home_sharp,
                    type: TextInputType.streetAddress,
                    maxLine: 3,
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: Colors.grey.shade200),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MySwitch(
                          title: 'Notifikasi',
                          subtitle: 'Aktifkan notifikasi aplikasi',
                          value: _isNotificationActive,
                          onChanged: (newValue) {
                            setState(() {
                              _isNotificationActive = newValue;
                            });
                          },
                        ),
                        SizedBox(height: 12),
                        MyCheckbox(
                          label: 'Saya menyetujui syarat & ketentuan',
                          value: _acceptTerms,
                          onChanged: (newValue) {
                            setState(() {
                              _acceptTerms = newValue ?? false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
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
                        'Register'.toUpperCase(),
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
                Navigator.pop(context);
              },
              child: Text(
                'Sudah memiliki akun? Login',
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
