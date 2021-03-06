import 'package:flutter/material.dart';
import 'package:flutter_ui_furniture_app/app_colors.dart';
import 'package:flutter_ui_furniture_app/furniture_details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250.0,
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
                      margin: EdgeInsets.only(top: 25,left: 55),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/white_dots.png'))
                      ),
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
                            Spacer(),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 30,
                                height: 30,
                                margin: EdgeInsets.only(right: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Spacer(),
                                    Container(
                                      color: Colors.white,
                                      height: 4,
                                      width: 18.0,
                                    ),
                                    Spacer(),
                                    Container(
                                      color: Colors.white,
                                      height: 4,
                                    ),
                                    Spacer(),
                                    Container(
                                      color: Colors.white,
                                      height: 4,
                                      width: 12.0,
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Hello , Pino",
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: "Quicksand",
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "What do you want to buy ?",
                                style: TextStyle(
                                    fontSize: 23.0,
                                    fontFamily: "Quicksand",
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 28.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(5.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: AppColors.primaryColors,
                                  ),
                                  hintText: "Search",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Material(
                    elevation: 1,
                    child: Container(
                      height: 75,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _buildSelectOptionItem(
                          'Sofas', true, AssetImage('assets/sofas.png')),
                      _buildSelectOptionItem(
                          'Sofas', true, AssetImage('assets/wardrobe.png')),
                      _buildSelectOptionItem(
                          'Sofas', true, AssetImage('assets/desks.png')),
                      _buildSelectOptionItem(
                          'Sofas', true, AssetImage('assets/dressers.png')),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          _buildListViewItemCard(
              "FinmNavin",
              "Reference site about Lorem Ipsum, as well as a random Lipsum generator.",
              280,
              true,
              AssetImage('assets/ottoman.jpg')),

          _buildListViewItemCard(
              "Another Chair",
              "Reference site about Lorem Ipsum,  as well as a random Lipsum generator.",
              280,
              false,
              AssetImage('assets/anotherchair.jpg')),
          _buildListViewItemCard(
              "Another Chair",
              "Reference site about Lorem Ipsum,  as well as a random Lipsum generator.",
              280,
              false,
              AssetImage('assets/chair.jpg')),
          _buildListViewItemCard(
              "Another Chair",
              "Reference site about Lorem Ipsum,  as well as a random Lipsum generator.",
              280,
              false,
              AssetImage('assets/chair.jpg')),
          _buildListViewItemCard(
              "Another Chair",
              "Reference site about Lorem Ipsum,  as well as a random Lipsum generator.",
              280,
              false,
              AssetImage('assets/chair.jpg')),
          SizedBox(height: 30,),
        ],
      ),
    );
  }

  _buildSelectOptionItem(String title, bool status, var image) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 75.0,
          child: Column(
            children: <Widget>[
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(image: DecorationImage(image: image)),
              ),
              Text(
                title,
                style: TextStyle(fontFamily: "Quicksand"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildListViewItemCard(
      String name, String description, var price, bool isFavourite, var image) {
    return InkWell(
      onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>FurnitureDetailsScreen())),
      child: Container(
        margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
        padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
        height: 180,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 15),
              width: 140,
              decoration: BoxDecoration(
                image: DecorationImage(image: image, fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          name,overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontFamily: "Quicksand",
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                      ),

                      isFavourite?
                      Container(
                        margin: EdgeInsets.all(4.0),
                        height: 45,width: 45,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 5.0)]),
                      ): Container(
                        height: 45,width: 45,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xeeEEEEEE),
                           ),
                      ),
                    ],
                  ),
                 Container(child: Flexible(child: Text(description,softWrap: true,maxLines: 4,textAlign: TextAlign.justify,style: TextStyle(color: Colors.grey,fontFamily: "Quicksand"),),),),
                  Spacer(),
                  Container(
                    height: 40.0,
                    child: Row(
                      children: <Widget>[
                        Expanded(flex: 1, child: InkWell(onTap: (){}, child: Container( child: Center(child: Text("৳ $price",style: TextStyle(fontFamily: "Quicksand",fontSize: 20,color: Colors.white),),),color: AppColors.primaryColors,))),
                        Expanded(flex:2 ,child: Container( child: Center(child: Text("Add to cart",style: TextStyle(fontFamily: "Quicksand",fontSize: 20,color: Colors.white),),),color: AppColors.primaryColors.withOpacity(0.6),)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
