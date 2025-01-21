import 'package:flutter/material.dart';

// import 'package:spot/user/authentication/auth.dart';
// import 'package:spot/user/authentication/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //  final Authentication _signout = Authentication();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Spot',
          style: TextStyle(color: Colors.amberAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.logout_outlined),
        //     onPressed: () async {
        //       await _signout.signout();
        //       Navigator.pushReplacement(context,
        //           MaterialPageRoute(builder: (context) => LoginPage()));
        //     },
        //   ),
        // ],
      ),
// bottomNavigationBar: BottomNavigationBar(  items:[
//   BottomNavigationBar items(
//   icon: icons."Home",
//   )
// ] ),
    );
  }
}
