import 'package:flutter/material.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    new Future.delayed(
      Duration(seconds: 3),
          (){

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            FractionallySizedBox(
              widthFactor: 1,
              heightFactor: 0.85,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(
                    'background.png'
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 1,
              heightFactor: 0.85,
              child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Image(
                            width: 150,
                            height: 150,
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                                'ic_logo_thang.png'
                            ),
                          ),
                          Image(
                            width: 150,
                            height: 150,
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                                'ic_logo_nghieng.png'
                            ),
                          )
                        ],
                      ),
                      Text(
                        'LOGO',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40
                        ),
                      )
                    ],
                  ) ,
              ) ,
            )


          ],
        ),
      ),
    );
  }
}