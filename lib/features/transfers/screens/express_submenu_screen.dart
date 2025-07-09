import 'package:flutter/material.dart';

class ExpressSubmenuScreen extends StatelessWidget {
  const ExpressSubmenuScreen({super.key});

  // بيانات وهمية للخيارات
  final List<Map<String, dynamic>> _expressOptions = const [
    {
      'label': 'الإرسال إلى رقم مميز',
      'icon': Icons.send_to_mobile,
      'color': Colors.redAccent
    },
    {
      'label': 'الإرسال إلى اسم',
      'icon': Icons.person_search,
      'color': Colors.blueAccent
    },
    {
      'label': 'دفع حوالة إلى حساب',
      'icon': Icons.receipt_long,
      'color': Colors.green
    },
    {
      'label': 'إلغاء حوالة',
      'icon': Icons.cancel_outlined,
      'color': Colors.orange
    },
    {
      'label': 'حالة الحوالة',
      'icon': Icons.sync_problem,
      'color': Colors.purple
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الكريمي اكسبرس'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.onSurface),
        titleTextStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Tajawal',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // استخدام GridView لترتيب الخيارات
        child: GridView.count(
          crossAxisCount: 2, // عمودان في كل صف
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.2, // نسبة العرض إلى الارتفاع لكل عنصر
          children: _expressOptions.map((option) {
            return _ExpressOptionButton(
              label: option['label'],
              icon: option['icon'],
              color: option['color'],
              onTap: () {
                // هنا يمكنك إضافة منطق الانتقال لكل خيار
                // مثال: if (option['label'] == 'الإرسال إلى رقم مميز') { ... }
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

// ويدجت مساعد لإنشاء أزرار الخيارات
class _ExpressOptionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _ExpressOptionButton({
    required this.label,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: color.withOpacity(0.15),
              child: Icon(icon, size: 30, color: color),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
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
