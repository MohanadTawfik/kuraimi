import 'package:flutter/material.dart';
import 'package:kuraimi/core/theme/app_theme.dart';

class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final bool isLoading;
  final VoidCallback onLogin;

  const LoginForm({
    super.key,
    required this.formKey,
    required this.isLoading,
    required this.onLogin,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isPasswordVisible = false;
  bool _loginWithoutInternet = false;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodyLarge?.color;

    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('رقم العميل',
              style: TextStyle(
                  color: textColor, fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 8),
          TextFormField(
            decoration: const InputDecoration(hintText: 'ادخل رقم العميل'),
            keyboardType: TextInputType.number,
            validator: (v) =>
                (v == null || v.isEmpty) ? 'الرجاء إدخال رقم العميل' : null,
          ),
          const SizedBox(height: 20),
          Text('كلمة المرور',
              style: TextStyle(
                  color: textColor, fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 8),
          TextFormField(
            obscureText: !_isPasswordVisible,
            decoration: InputDecoration(
              hintText: 'ادخل كلمة المرور',
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: Colors.grey[600]),
                    onPressed: () => setState(
                        () => _isPasswordVisible = !_isPasswordVisible),
                  ),
                ],
              ),
            ),
            validator: (v) =>
                (v == null || v.isEmpty) ? 'الرجاء إدخال كلمة المرور' : null,
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: widget.isLoading ? null : widget.onLogin,
                    child: widget.isLoading
                        ? const SizedBox(
                            height: 24,
                            width: 24,
                            child: CircularProgressIndicator(
                                color: Colors.white, strokeWidth: 3))
                        : const Text('دخــــول'),
                  ),
                ),
                const SizedBox(width: 20),
                Stack(
                  children: [
                    IconButton(
                      icon: Icon(Icons.fingerprint,
                          color: AppTheme.lightAccent, size: 40),
                      onPressed: () {},
                    ),
                    Positioned(
                      top: 30,
                      left: 5,
                      right: 5,
                      child: Container(
                        color: Theme.of(context).primaryColor,
                        height: 3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => setState(
                    () => _loginWithoutInternet = !_loginWithoutInternet),
                child: Row(
                  children: [
                    Checkbox(
                      value: _loginWithoutInternet,
                      onChanged: (v) =>
                          setState(() => _loginWithoutInternet = v!),
                      activeColor: Theme.of(context).primaryColor,
                    ),
                    const Text('الدخول بدون انترنت'),
                  ],
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.lock_outline, size: 20),
                label: const Text('نسيت كلمة المرور؟'),
                style: TextButton.styleFrom(
                    foregroundColor: textColor?.withOpacity(0.7)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
