import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 140.0),
                child: title(),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: buttonLocation(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget title() {
    return Text(
      'Pilih lokasi',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget buttonLocation() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            child: SizedBox(
              width: 248.0,
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange[700]),
                ),
                child: Text(
                  'Kampus D',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            child: SizedBox(
              width: 248.0,
              height: 60.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange[700]),
                ),
                child: Text(
                  'Kampus G',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 248.0,
            height: 60.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.orange[700]),
              ),
              child: Text(
                'Kampus H',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
