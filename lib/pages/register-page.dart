import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var username = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var formkey = GlobalKey<FormState>();

  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
              image: AssetImage('assets/background/basic-bg.jpg'),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 120,
                    left: 26,
                  ),
                  child: title(),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    left: 20,
                    right: 20,
                  ),
                  child: form(),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  child: Center(
                    child: button(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget title() {
    return Text(
      'Register',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget form() {
    return Column(
      children: [
        TextField(
          controller: username,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.people),
            hintText: "Username",
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextField(
          controller: email,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.email),
            hintText: "Email",
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextField(
          controller: password,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            hintText: "Password",
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ],
    );
  }

  Widget button() {
    return SizedBox(
      width: 248.0,
      height: 60.0,
      child: ElevatedButton(
        onPressed: () {
          //Navigator.of(context).pushNamed('/login');
          Navigator.of(context).pushReplacementNamed('/login');
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.orange[700]),
        ),
        child: Text(
          'Register',
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
