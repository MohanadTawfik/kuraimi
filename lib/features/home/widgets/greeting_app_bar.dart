import 'package:flutter/material.dart';

class GreetingAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  final int notificationCount;

  const GreetingAppBar({
    super.key,
    required this.userName,
    this.notificationCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.orange.shade100,
          child: const Icon(Icons.person, color: Colors.orange),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            userName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text('مرحباً بك ...',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade600)),
        ],
      ),
      actions: [
        Stack(
          alignment: Alignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.notifications_none_outlined,
                  color: Colors.grey.shade700, size: 30),
              onPressed: () {},
            ),
            if (notificationCount > 0)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '+$notificationCount',
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
          ],
        ),
        IconButton(
          icon: Icon(Icons.more_vert, color: Colors.grey.shade700),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
