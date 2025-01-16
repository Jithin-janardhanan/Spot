import 'package:flutter/material.dart';
import 'package:spot/auth/auth.dart';
import 'package:spot/home.dart';
import 'package:spot/signup.dart';
import 'package:spot/validation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  final Validation validation = Validation();

  final _auth = Authentication();

  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Spot',
          style: TextStyle(color: Colors.amberAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image.asset('assets/SplashScreen__1_-removebg-preview.png'),
            Text(
              'Welcome Back to spot',
              style: TextStyle(
                fontSize: 35,
                color: const Color.fromARGB(255, 61, 130, 219),
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Form(
                key: formkey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFormField(
                        validator: (value) =>
                            validation.validateemail(value ?? ''),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          validator: (value) =>
                              validation.validatePassword(value ?? ''),
                          decoration: InputDecoration(
                            hintText: 'Password',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: const Icon(Icons.lock_outline),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscured
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscured = !_isObscured;
                                });
                              },
                            ),
                          ),
                          obscureText: _isObscured,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: MaterialButton(
                          minWidth: double.maxFinite,
                          onPressed: _login
                          //  () {
                          //   if (formkey.currentState!.validate()) {
                          //     // Perform signup logic here
                          //     ScaffoldMessenger.of(context).showSnackBar(
                          //       const SnackBar(
                          //           content: Text("Login Successful")),
                          //     );

                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => HomePage()));
                          //   }
                          // },
                          ,
                          child: Text('login'),
                          color: Colors.blue,
                          textColor: const Color.fromARGB(255, 254, 254, 254),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("don't have an account ?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupPage()));
                            },
                            child: Text('SIGNUP'))
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }

  _login() async {
    if (formkey.currentState!.validate()) {
      final user = await _auth.logincreateUserWithEmailAndPassword(
          _emailcontroller.text, _passwordcontroller.text);
      if (user != null) {
        // Form is valid
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('LOGIN Successful!')),
        );
      }
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }
}
