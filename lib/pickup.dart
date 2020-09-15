import 'package:flutter/material.dart';

class Pickup extends StatefulWidget {
  @override
  _PickupState createState() => _PickupState();
}

class _PickupState extends State<Pickup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromRGBO(251, 185, 44, 1),
          child: Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 70.0, top: 50.0),
                  height: 700.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50.0)),
                  )),
              Container(
                height: 300.0,
                width: 60.0,
                margin: EdgeInsets.only(left: 3.0, top: 100.0),
                child: Column(
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        color: Color.fromRGBO(167, 148, 107, 1),
                        shape: CircleBorder(),
                      ),
                      child: Ink(
                        child: IconButton(
                          icon: Icon(Icons.location_on),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        color: Color.fromRGBO(167, 148, 107, 1),
                        shape: CircleBorder(),
                      ),
                      child: Ink(
                        child: IconButton(
                          icon: Icon(Icons.add),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        color: Color.fromRGBO(167, 148, 107, 1),
                        shape: CircleBorder(),
                      ),
                      child: Ink(
                        child: IconButton(
                          icon: Icon(Icons.inbox),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      decoration: ShapeDecoration(
                        color: Color.fromRGBO(167, 148, 107, 1),
                        shape: CircleBorder(),
                      ),
                      child: Ink(
                        child: IconButton(
                          icon: Icon(Icons.content_paste),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
