import 'package:flutter/material.dart';
import 'dart:async';

class OrderAccepted extends StatefulWidget {
  const OrderAccepted({Key key}) : super(key: key);

  @override
  _OrderAcceptedState createState() => _OrderAcceptedState();
}

class _OrderAcceptedState extends State<OrderAccepted> {
  void initState() {
    super.initState();
    orderAcceptedScreenEnd();
  }

  orderAcceptedScreenEnd() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon(),
              SizedBox(height: 24.0),
              text(),
            ],
          ),
        ),
      ),
    );
  }

  Widget icon() {
    return Icon(
      Icons.check_box,
      size: 100,
    );
  }

  Widget text() {
    return Text(
      'Pesanan diterima',
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.black.withOpacity(0.6),
      ),
    );
  }
}
