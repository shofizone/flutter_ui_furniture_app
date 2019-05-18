import 'package:flutter/material.dart';
import 'package:flutter_ui_furniture_app/MyColors.dart';
import 'package:flutter_ui_furniture_app/home_screen.dart';
import 'package:flutter_ui_furniture_app/profile_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeController()
    );
  }
}

class HomeController extends StatefulWidget {
  @override
  _HomeControllerState createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> with SingleTickerProviderStateMixin{
  var tabController;
  var tabBarItemColor = defaultColor;

  @override
  void initState() {
    // TODO: implement initState
    tabController = new TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          HomeScreen(),
          HomeScreen(),
          HomeScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar:  Material(
        color: Colors.white,
        child: TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.grey,
            labelColor: MyColors.defaultColor,
            tabs: <Widget>[
              Tab(icon: Icon(IconData(0xf80a,fontFamily: "Font Awesome 5 Pro")),),
              Tab(icon: Icon(IconData(0xf017,fontFamily: "Font Awesome 5 Pro")),),
              Tab(icon: Icon(IconData(0xf07a,fontFamily: "Font Awesome 5 Pro")),),
              Tab(icon: Icon(IconData(0xf007,fontFamily: "Font Awesome 5 Pro")),),

            ]
        ),
      ),
    );
  }
}
