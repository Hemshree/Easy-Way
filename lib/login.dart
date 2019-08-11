import 'package:flutter/material.dart';
import 'qrcode.dart';
import 'redeem.dart';

class BusFind extends StatefulWidget {
  BusFind({Key key, this.head}) : super(key: key);
  final String head;
  @override
  _BusFindState createState() => _BusFindState();
}

class _BusFindState extends State<BusFind> {

  final sourceField = TextField(
    obscureText: false,

    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "From Where?",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );

  final destinationField = TextField(
    obscureText: false,


    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "To Where?",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );

  final loginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Color(0xff01A0C7),
    child: MaterialButton(



        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {

        },

        child: Text("FIND",
          textAlign: TextAlign.center,


        )),
  );
  final newButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Color(0xff01A0C7),
    child: MaterialButton(

        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          print("HomePage");

          },
        child: Text("SCAN A QR CODE",
          textAlign: TextAlign.center,
        )),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff01A0C7),
          title: Text('EasyWay'),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                print("HomePage");
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
              },
              icon: Icon(

                Icons.center_focus_strong,
                color: Colors.white,
              ),
            ),
          ],
        ),
        drawer: Drawer(
          elevation: 10.0,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text('Hemshree123@gmail.com'),
                accountName: Text('Hemshree'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print("Bus Find");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> BusFind()));
                },
                child: ListTile(
                  title: Text('Home'),
                  leading: Icon(
                    Icons.home,
                    color: Colors.teal,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print("HomePage");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Redeem()));

                },
                child: ListTile(
                  title: Text('Redeem & Offers'),
                  leading: Icon(
                    Icons.monetization_on,
                    color: Colors.teal,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Journey History'),
                  leading: Icon(

                    Icons.directions_bus,
                    color: Colors.teal,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Account'),
                  leading: Icon(
                    Icons.account_box,
                    color: Colors.teal,
                  ),
                ),
              ),
              Divider(
                color: Colors.teal,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.teal,
                  ),

                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(
                    Icons.person,
                    color: Colors.teal,
                  ),

                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(

          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    height: 155.0,
                    child: Image.asset(
                      "assets/logo.jpeg",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  sourceField,
                  SizedBox(height: 15.0),
                  destinationField,
                  SizedBox(
                    height: 35.0,
                  ),
                  loginButton,
                  SizedBox(

                    height: 15.0,

                  ),
                  SizedBox(
                    height: 10.0,

                  ),
                  newButton,
                ],
              ),
            ),
          ),

        )

    );
  }
}