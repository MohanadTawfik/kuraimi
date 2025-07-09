import 'package:flutter/material.dart';

import 'package:kuraimi/features/home/widgets/account_card.dart';
import 'package:kuraimi/features/home/widgets/greeting_app_bar.dart';
import 'package:kuraimi/features/home/widgets/services_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GreetingAppBar(
        userName: 'مهند توفيق',
        notificationCount: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AccountCard(
              accountNumber: '3000537078',
              balance: '******',
              currency: 'YER',
            ),
            _buildSearchBar(),
            const SizedBox(height: 20),
            const ServicesLayout(),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'بياناتي'),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'خذني إلى ....',
          prefixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
