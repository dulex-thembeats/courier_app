import 'package:flutter/material.dart';
import 'package:courierapp/pickup.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Row(
          children: [
            Text(
              'My navigation bar',
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              width: 500.0,
              height: 380.0,
              color: Color.fromRGBO(251, 185, 44, 1),
            ),
            Center(
              child: Card(
                margin: EdgeInsets.only(top: 80.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pickup()),
                    );
                  },
                  child: SafeArea(
                    child: Container(
                      width: 320,
                      height: 130,
                      child: Container(
                        margin: EdgeInsets.only(left: 120.0, top: 30.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Arrange Delivery',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                                'Arrange delivery of anything, anytime, & anywhere'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
