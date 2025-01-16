import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:spot/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDPiE3DhwyO5tu0ecW7LRr4zik8mYAnzoY",
      appId: "1:1078670204041:android:df408abed26c3c115aba58",
      messagingSenderId: "1078670204041",
      projectId: " spot-cfbd3",
    ),
  );
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spot',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
