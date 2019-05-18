import 'package:flutter/material.dart';
import 'package:flutter_ui_furniture_app/MyColors.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                //Background
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      color: Color(0xFF00838f),
                    ),
                    Positioned(
                      bottom: 50.0,
                      right: 130.0,
                      child: Container(
                        height: 370,
                        width: 370,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: Color(0x33ffffff),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 100.0,
                      left: 190.0,
                      child: Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: Color(0x33ffffff),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Container(
                        margin: EdgeInsets.only(top: 25, left: 55),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/white_dots.png'))),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20.0,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  image: DecorationImage(
                                      image: AssetImage("assets/pro_pic.jpg"),
                                      fit: BoxFit.cover),
                                  border: Border.all(
                                      color: Colors.white, width: 3.0)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 08),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Pino",
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        fontFamily: "Quicksand",
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    " 017****89",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: "Quicksand",
                                        color: Colors.white.withOpacity(0.8),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.settings),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: <Widget>[
                        _buildOptionItem(
                            "Favorites",
                            Icon(
                              IconData(0xf022,
                                  fontFamily: "Font Awesome 5 Pro Solid"),
                              color: Colors.white,
                              size: 35,
                            ),
                            () {}),
                        _buildOptionItem(
                            "Wallet",
                            Icon(
                              IconData(
                                0xf81d,
                                fontFamily: "Font Awesome 5 Pro Solid",
                              ),
                              color: Colors.white,
                              size: 35,
                            ),
                            () {}),
                        _buildOptionItem(
                            "FootPrint",
                            Icon(
                              IconData(0xf54b,
                                  fontFamily: "Font Awesome 5 Pro Solid"),
                              color: Colors.white,
                              size: 35,
                            ),
                            () {}),
                        _buildOptionItem(
                            "Coupon",
                            Icon(
                              IconData(0xf4a0,
                                  fontFamily: "Font Awesome 5 Pro Solid"),
                              color: Colors.white,
                              size: 35,
                            ),
                            () {}),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: <Widget>[
                          _buildCardItem("Pending payment",IconData(0xf09d, fontFamily: "Font Awesome 5 Pro",),8,(){}),
                          _buildCardItem("To bd shipped",IconData(0xf5b0, fontFamily: "Font Awesome 5 Pro",),5,(){}),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: <Widget>[
                          _buildCardItem("To bd received",  IconData(0xf48b, fontFamily: "Font Awesome 5 Pro",),3,(){}),
                          _buildCardItem("Return / Replace",IconData(0xf466, fontFamily: "Font Awesome 5 Pro",),6,(){}),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.0,),
                    ListView(
                      shrinkWrap: true,
                     primary: false,
                     children: <Widget>[
                       _buildListTile("Gift Card",IconData(0xf06b, fontFamily: "Font Awesome 5 Pro Solid",),Colors.redAccent,(){}),
                       _buildListTile("Bank Card",IconData(0xf09d, fontFamily: "Font Awesome 5 Pro Solid",),Colors.blue,(){}),
                       _buildListTile("Replacement Code",IconData(0xf029, fontFamily: "Font Awesome 5 Pro Solid",),Colors.orange,(){}),
                       _buildListTile("consulting collection",IconData(0xf022, fontFamily: "Font Awesome 5 Pro Solid",),Colors.green,(){}),
                       _buildListTile("Customer Service",IconData(0xf82d, fontFamily: "Font Awesome 5 Pro Solid",),Colors.yellow,(){}),
                       _buildListTile("Gift Card",IconData(0xf06b, fontFamily: "Font Awesome 5 Pro Solid",),Colors.purple,(){}),
                       _buildListTile("Gift Card",IconData(0xf06b, fontFamily: "Font Awesome 5 Pro Solid",),Colors.purpleAccent,(){}),

                     ],

                    ),
                    SizedBox(height: 25.0,),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildOptionItem(String title, icon, action) {
    return Expanded(
      child: InkWell(
        onTap: action,
        child: Container(

          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 30,

                )]),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Container(
                width: 50,
                height: 50,
                child: icon,

              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: "Quicksand",
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  _buildCardItem(String title,var icon,int count,var action){
    return Expanded(
      child: Card(
        elevation: 1.5,
        margin: EdgeInsets.all(5.0),
        child: InkWell(
          onTap: action,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20,left: 20),
                child: Icon(icon,size: 45.0,color: Colors.black87),
              ),
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.only(left: 20,bottom: 10),
                child: Text(count.toString(),style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildListTile(String title, IconData iconData, var color,var action) {
  return   ListTile(
    onTap: action,
  leading: CircleAvatar(child: Icon(iconData,color:color ,),backgroundColor: color.withOpacity(0.2),radius: 23,),
  title: Text(title),
  trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: (){}),
  );

}
}
