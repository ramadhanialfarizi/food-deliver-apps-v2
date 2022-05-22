import 'package:flutter/material.dart';
import '../../components/sideBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // sidebar,
      drawer: Sidebar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 50,
        ),
        // leading: Container(
        //   margin: const EdgeInsets.only(left: 20.0),
        //   child: IconButton(
        //     icon: Icon(
        //       Icons.menu,
        //       color: Colors.black,
        //       size: 30,
        //     ),
        //     onPressed: () {},
        //   ),
        // ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/cart');
              },
            ),
          ),
        ],
        //iconTheme: Icon(Icons.search),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ListView(
            // itemBuilder: (context, index){},
            shrinkWrap: true,
            //scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              // question
              Container(
                padding: EdgeInsets.all(27.0),
                child: question(),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 20.0,
                ),
                child: search(),
              ),
              // card merchand
              Container(
                margin: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                  bottom: 10.0,
                ),
                child: card(context),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                  bottom: 10.0,
                ),
                child: card(context),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                  bottom: 10.0,
                ),
                child: card(context),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                  bottom: 10.0,
                ),
                child: card(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget question() {
    return Text(
      'Mau pesan apa hari ini ?',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget search() {
    return TextField(
      //controller: email,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: "cari jajananmu",
        filled: true,
        fillColor: Colors.white70,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(color: Colors.white),
        ),
        // enabledBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.grey, width: 1.0),
        // ),
      ),
    );
  }

  Widget card(context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/detail');
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
              Image.asset('assets/images/kios.jpg'),
              ListTile(
                title: const Text('Susu Mbok Darmi'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
