import 'package:flutter/material.dart';
import '../widgets/app_header.dart';
import '../widgets/login_form.dart';
import '../widgets/promo_banner.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  int _bottomNavIndex = 1; // Default index

  Future<void> _handleLogin() async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() => _isLoading = true);
      await Future.delayed(const Duration(seconds: 2));
      if (mounted) {
        // استخدام المسارات المعرفة في main.dart
        Navigator.pushReplacementNamed(context, '/home');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppHeader(),
              const SizedBox(height: 20),
              const PromoBanner(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: LoginForm(
                  formKey: _formKey,
                  isLoading: _isLoading,
                  onLogin: _handleLogin,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_upward), label: 'المزيد'),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment), label: 'الدفع عبر حاسب'),
        ],
      ),
    );
  }
}
