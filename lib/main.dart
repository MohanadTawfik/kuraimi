import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:device_preview/device_preview.dart';

import 'package:kuraimi/core/theme/app_theme.dart';
import 'package:kuraimi/features/home/screens/home_screen.dart';
import 'package:kuraimi/features/login/screens/login_screen.dart';

// It's a good practice to use a package for fonts, but for a single file,
// ensure you have added the 'Tajawal' font to your pubspec.yaml and assets.
// google_fonts: ^6.2.1

void main() {
  // Ensure Flutter bindings are initialized.
  WidgetsFlutterBinding.ensureInitialized();
  // Lock orientation to portrait mode.
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(DevicePreview(
    enabled: true, // Enable Device Preview only in debug mode
    builder: (context) => const KuraimiAppClone(),
  ));
}

/// The main application widget.
class KuraimiAppClone extends StatelessWidget {
  const KuraimiAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuraimi Jawal Clone',
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      builder: DevicePreview.appBuilder,
      themeMode:
          ThemeMode.system, // Automatically switch based on system settings
      debugShowCheckedModeBanner: false,

      initialRoute: '/login',
      routes: {
        '/login': (context) => const Directionality(
              textDirection: TextDirection.rtl,
              child: LoginScreen(),
            ),
        '/home': (context) => const Directionality(
              textDirection: TextDirection.rtl,
              child: HomeScreen(),
            ),
      },
    );
  }
}
