
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{
  TabController _tabController;
  int indexTap=0;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
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
                      appBar: TabBar(
                          onTap: (index){
                            setState(() {
                             indexTap=index;
                            });
                          },
                          indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              style: BorderStyle.none
                            )
                          ),
                          unselectedLabelColor: Colors.grey,
                          labelColor: Colors.black,
                          tabs: <Widget>[
                            Tab(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                          child: Center(child: Text('ĐĂNG KÝ')),
                                      ),
                                      Container(
                                        height: ScreenUtil().setHeight(20),
                                        decoration: indexTap==0? BoxDecoration(
                                          color:Colors.blue,
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                        ):null,
                                      )
                                    ]
                                ),
                            ),
                            Tab(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: Center(child: Text('ĐĂNG NHẬP')),
                                    ),
                                    Container(
                                      height: ScreenUtil().setHeight(20),
                                      decoration: indexTap==1? BoxDecoration(
                                        color:Colors.blue,
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                                      ):null,
                                    )
                                  ]
                              ),
                            ),
                          ],
                      ),

                      body: TabBarView(
                        controller: _tabController,
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
