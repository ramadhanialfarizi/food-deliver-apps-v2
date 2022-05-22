import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
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
              Container(
                padding: EdgeInsets.only(
                  bottom: 27.0,
                  right: 27.0,
                  left: 27.0,
                  top: 10.0,
                ),
                child: restaurantTitle(),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 10.0,
                ),
                child: foodCard(context),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 10.0,
                ),
                child: foodCard(context),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 10.0,
                ),
                child: foodCard(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget restaurantTitle() {
    return Text(
      'Susu mbok Darmi',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget foodCard(context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/detailFood');
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 9,
              spreadRadius: 1,
              offset: Offset(4, 0),
            ),
          ],
        ),
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Image.asset('assets/images/food.jpg'),
              ListTile(
                title: const Text('Darmi Strawberry Monster'),
                subtitle: Text(
                  'Susu strawberry dengan gelas besar',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
