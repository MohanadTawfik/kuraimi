import 'package:flutter/material.dart';
import 'package:kuraimi/core/theme/app_theme.dart';
import 'package:kuraimi/features/transfers/screens/express_submenu_screen.dart';

class ServicesLayout extends StatelessWidget {
  const ServicesLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 251, 79, 36),
                        Color.fromARGB(255, 255, 0, 8),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: _ServiceButton(
                    label: 'الكريمي اكسبرس',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExpressSubmenuScreen()),
                      );
                    },
                    child: const Text("K",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                  child: _ServiceButton(
                label: 'الخدمات البنكية',
                color: Theme.of(context).colorScheme.surface,
                iconColor: Theme.of(context).primaryColor,
                icon: Icons.account_balance,
              )),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                  child: _ServiceButton(
                label: 'خدمات الدفع والسداد (حاسب)',
                color: Theme.of(context).brightness == Brightness.light
                    ? AppTheme.lightServiceButton
                    : AppTheme.darkServiceButton,
                icon: Icons.receipt_long,
                iconColor: Theme.of(context).primaryColor,
              )),
              const SizedBox(width: 12),
              Expanded(
                  child: _ServiceButton(
                label: 'خدمات ام فلوس',
                color: Theme.of(context).brightness == Brightness.light
                    ? AppTheme.lightServiceButton
                    : AppTheme.darkServiceButton,
                child: const Text("MF",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              )),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                  child: _ServiceButton(
                label: 'خدمة التمويل',
                color: Theme.of(context).colorScheme.surface,
                icon: Icons.settings,
                iconColor: Theme.of(context).primaryColor,
              )),
              const SizedBox(width: 12),
              Expanded(
                  child: _ServiceButton(
                label: 'خدمات القسائم',
                color: Theme.of(context).brightness == Brightness.light
                    ? AppTheme.lightServiceButton
                    : AppTheme.darkServiceButton,
                icon: Icons.card_giftcard,
                iconColor: Theme.of(context).primaryColor,
              )),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                  child: _ServiceButton(
                label: 'خدمات أخرى',
                color: Theme.of(context).colorScheme.surface,
                icon: Icons.settings,
                iconColor: Theme.of(context).primaryColor,
              )),
              const SizedBox(width: 12),
              Expanded(
                  child: _ServiceButton(
                label: 'خدمات البطاقة',
                color: Theme.of(context).brightness == Brightness.light
                    ? AppTheme.lightServiceButton
                    : AppTheme.darkServiceButton,
                icon: Icons.credit_card,
                iconColor: Theme.of(context).primaryColor,
              )),
            ],
          ),
        ],
      ),
    );
  }
}

// تم تعديل هذا الويدجت ليقبل دالة onTap
class _ServiceButton extends StatelessWidget {
  final String label;
  final Color? color;
  final IconData? icon;
  final Color? iconColor;
  final Widget? child;
  final VoidCallback? onTap; // تمت إضافة خاصية onTap

  const _ServiceButton({
    required this.label,
    this.color,
    this.icon,
    this.iconColor,
    this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color textColor;
    if (color == null) {
      textColor = Colors.white;
    } else {
      textColor = color == Theme.of(context).colorScheme.secondary
          ? Colors.white
          : Theme.of(context).colorScheme.onSurface;
    }

    // تغليف الويدجت بالكامل بـ InkWell لجعله قابلاً للنقر
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            child ?? Icon(icon, size: 30, color: iconColor ?? textColor),
            const SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: textColor, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
