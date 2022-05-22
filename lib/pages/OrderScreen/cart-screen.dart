import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

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
              'Keranjang',
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
              Container(
                margin: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 10.0,
                ),
                child: card(),
              ),
              // Container(
              //   margin: EdgeInsets.only(
              //     left: 20.0,
              //     right: 20.0,
              //     bottom: 10.0,
              //   ),
              //   child: card(),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: SizedBox(
          height: 60,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed('/accept-order');
        },
        icon: Icon(Icons.check),
        label: Text('Checkout'),
        backgroundColor: Colors.orange[700],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget card() {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/images/food.jpg'),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Darmi Strawberry Monster',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Rp 21.500',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
