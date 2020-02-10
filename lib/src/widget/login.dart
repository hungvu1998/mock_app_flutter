
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {

    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 1080, height: 2160, allowFontScaling: false);
    return Scaffold(
      body: Container(
        //  padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
          color: Colors.white,
          constraints: BoxConstraints.expand(),
            child: Column(
              children: <Widget>[
                Container(
                  width: ScreenUtil().setWidth(1080),
                  height: ScreenUtil().setHeight(700),
                  child: Stack(
                    children: <Widget>[
                      Image(
                        width: ScreenUtil().setWidth(1080),
                        height: ScreenUtil().setHeight(700),
                        fit: BoxFit.fill,
                        image: AssetImage(
                            'background_login.png'
                        ),
                      ),
                      Center(
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Image(
                                  width: ScreenUtil().setWidth(250),
                                  height: ScreenUtil().setHeight(250),
                                  fit: BoxFit.fitWidth,
                                  image: AssetImage(
                                      'ic_logo_thang.png'
                                  ),
                                ),
                                Image(
                                  width: ScreenUtil().setWidth(250),
                                  height: ScreenUtil().setHeight(250),
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
                        ),
                      )


                    ],
                  ),
                ),
                Expanded(
                  child: DefaultTabController(
                    length: 2,
                    child: Scaffold(
                      appBar: AppBar(
                        bottom: TabBar(
                          tabs: <Widget>[
                            Tab(
                              text: 'ĐĂNG KÝ',
                            ),
                            Tab(
                              text: 'ĐĂNG NHẬP',
                            )
                          ],
                        ),
                      ),
                      body: TabBarView(
                        children: <Widget>[
                          Container(
                            color: Colors.black,
                          ),
                          Container(
                            color: Colors.blueGrey,
                          ),
                        ],
                      ),

                    ),
                  ) ,
                )
               ,



              ],
            ),


      ),
    );
  }
}