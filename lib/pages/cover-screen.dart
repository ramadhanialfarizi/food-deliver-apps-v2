import 'package:flutter/material.dart';

class CoverScreen extends StatelessWidget {
  const CoverScreen({Key key}) : super(key: key);

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
              image: AssetImage('assets/background/cover-bg.jpg'),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text1(),
                    text2(),
                    text3(),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 270),
                child: registerButton(context),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: loginButton(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget text1() {
    return Text(
      'Selamat datang',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget text2() {
    return Text(
      'UG FoodHub',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.yellow[900],
      ),
    );
  }

  Widget text3() {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Text(
        'Pesan jajananmu disini',
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget registerButton(context) {
    return SizedBox(
      width: 315.0,
      height: 54.0,
      child: ElevatedButton(
        onPressed: () {
          // Respond to button press
          Navigator.of(context).pushNamed('/register');
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Text(
          "Register",
          style: TextStyle(color: Colors.orange),
        ),
      ),
    );
  }

  Widget loginButton(context) {
    return SizedBox(
      width: 315.0,
      height: 54.0,
      child: ElevatedButton(
        onPressed: () {
          // Respond to button press
          Navigator.of(context).pushNamed('/login');
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Text(
          "Login",
          style: TextStyle(color: Colors.orange),
        ),
      ),
    );
  }
}
