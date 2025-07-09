import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  final String accountNumber;
  final String balance;
  final String currency;

  const AccountCard({
    super.key,
    required this.accountNumber,
    required this.balance,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ClipPath(
        child: Container(
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Theme.of(context).primaryColor, Colors.purple.shade800],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Placeholder for Bank Logo
                Text("ALKURAIMI BANK",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text("جاري",
                    style: TextStyle(color: Colors.white.withOpacity(0.8))),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(accountNumber,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(width: 8),
                    const Icon(Icons.copy, color: Colors.white, size: 18),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.account_balance_wallet,
                        color: Colors.white, size: 20),
                    const SizedBox(width: 10),
                    Text("$balance $currency",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(width: 10),
                    const Icon(Icons.visibility, color: Colors.white, size: 20),
                  ],
                ),
                const Spacer(),
                const Divider(color: Colors.white30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.apps, color: Colors.white),
                        label: const Text("خدمات",
                            style: TextStyle(color: Colors.white))),
                    const SizedBox(
                        height: 30,
                        child: VerticalDivider(color: Colors.white30)),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.qr_code, color: Colors.white),
                        label: const Text("عرض البيان",
                            style: TextStyle(color: Colors.white))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
