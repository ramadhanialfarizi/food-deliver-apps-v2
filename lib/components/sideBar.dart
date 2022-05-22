import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          userAccount(),
          Container(
            margin: const EdgeInsets.only(
              right: 40,
              left: 40,
              top: 350,
            ),
            child: button(context),
          ),
        ],
      ),
    );
  }

  Widget userAccount() {
    return UserAccountsDrawerHeader(
      accountName: Text(
        'Rama',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      accountEmail: Text(
        'ramadhani@gmail.com',
        style: TextStyle(
          fontSize: 11,
          color: Colors.white,
        ),
      ),
      currentAccountPicture: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: CircleAvatar(
          child: ClipOval(),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.orange[700],
      ),
    );
  }

  Widget button(context) {
    return SizedBox(
      width: 248.0,
      height: 55.0,
      child: ElevatedButton(
        onPressed: () {
          //Navigator.of(context).pushNamed('/cover');
          Navigator.of(context).pushReplacementNamed('/cover');
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
          'logout',
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
