import 'package:flutter/material.dart';

class FoodDetailScreen extends StatefulWidget {
  const FoodDetailScreen({Key key}) : super(key: key);

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Container(
            margin: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Text(
              'Food Detail',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          leading: Container(
            height: 38,
            width: 38,
            margin: const EdgeInsets.only(
              left: 20.0,
              top: 20.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 9,
                  spreadRadius: 1,
                  offset: Offset(4, 5),
                ),
              ],
            ),
            child: Align(
              //alignment: Alignment.center,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_sharp,
                  color: Colors.black,
                  size: 17,
                ),
                onPressed: () {
                  //action
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              image(),
              Container(
                margin: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 10.0,
                ),
                child: foodTitle(),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 5.0,
                  top: .0,
                ),
                child: description(),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 5.0,
                  top: 10.0,
                ),
                child: price(),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 5.0,
                  top: 10.0,
                ),
                child: noted(),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                  bottom: 20.0,
                  top: 50.0,
                ),
                child: button(),
              ),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget image() {
    return Container(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        bottom: 10.0,
        top: 20.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset('assets/images/food.jpg'),
      ),
    );
  }

  Widget foodTitle() {
    return Text(
      'Darmi Strawberry Monster',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget price() {
    return Text(
      'Rp 21.500',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.orange,
      ),
    );
  }

  Widget description() {
    return Text(
      'Susu strawberry dengan gelas besar',
      style: TextStyle(
        fontSize: 12.0,
        color: Colors.black.withOpacity(0.6),
      ),
    );
  }

  Widget noted() {
    return TextField(
      maxLines: null,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        hintText: "Tulis catatan disini...",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }

  Widget button() {
    return SizedBox(
      width: 100.0,
      height: 53.0,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/cart');
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
          'Tambah',
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
