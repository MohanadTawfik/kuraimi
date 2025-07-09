import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final secondaryTextColor = Theme.of(context).brightness == Brightness.light
        ? Colors.black54
        : Colors.white70;

    return Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
      child: Column(
        children: [
          Image.asset('assets/kuraimi_logo.png',
              height: 60,
              errorBuilder: (c, e, s) =>
                  const Icon(Icons.account_balance, size: 60)),
          const Text('بنك الكريمي',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text('للتمويل الأصغر الإسلامي',
              style: TextStyle(color: secondaryTextColor)),
          Text('دوماً معك', style: TextStyle(color: secondaryTextColor)),
        ],
      ),
    );
  }
}
