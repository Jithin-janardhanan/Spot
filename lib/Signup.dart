import 'package:flutter/material.dart';
import 'package:spot/auth/auth.dart';
import 'package:spot/auth/login.dart';
import 'package:spot/validation.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>(); // GlobalKey for the Form
  final Validation _validations = Validation();
  final _auth = Authentication();

  // Instance of Validation class
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  bool _isObscured = true;
  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 242, 239),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey, // Assign the GlobalKey to the Form
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Signup',
                  style: TextStyle(
                      fontSize: 35,
                      color: const Color.fromARGB(255, 59, 121, 203),
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: _emailcontroller,
                    validator: (value) => _validations.validateemail(
                        value ?? 'Enter valid email@.com'), // Email validation
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      controller: _passwordcontroller,
                      validator: (value) => _validations
                          .validatePassword(value ?? ''), // Password validation

                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter Password',
                        border: OutlineInputBorder(),
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
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: MaterialButton(
                    minWidth: double.maxFinite,
                    onPressed: _signup,
                    child: const Text('Signup'),
                    color: Colors.blue,
                    textColor: const Color.fromARGB(255, 254, 254, 254),
                  ),
                ),
                const Text('Already have an account?'),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: const Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }

  _signup() async {
    if (_formKey.currentState!.validate()) {
      final user = await _auth.createUserWithEmailAndPassword(
          _emailcontroller.text, _passwordcontroller.text);
      if (user != null) {
        // Form is valid
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Signup Successful!')),
        );
      }
    }
  }
}
