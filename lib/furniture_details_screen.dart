import 'package:flutter/material.dart';
import 'package:flutter_ui_furniture_app/MyColors.dart';

class FurnitureDetailsScreen extends StatefulWidget {
  @override
  _FurnitureDetailsScreenState createState() => _FurnitureDetailsScreenState();
}

var images = [
  AssetImage("assets/ottoman.jpg"),
  AssetImage("assets/ottoman.jpg"),
  AssetImage("assets/ottoman.jpg"),
  AssetImage("assets/ottoman.jpg"),
];

class _FurnitureDetailsScreenState extends State<FurnitureDetailsScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            elevation: 0.0,
            backgroundColor: MyColors.defaultColor,
            expandedHeight: 300,
            floating: false,
            pinned: true,
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: _buildProductImagesWidgets(),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              _buildDetails(),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  _buildProductImagesWidgets() {
    TabController imagesController =
        TabController(length: images.length, vsync: this);

    return Container(
      child: Center(
        child: DefaultTabController(
          length: images.length,
          child: Stack(
            children: <Widget>[
              TabBarView(
                controller: imagesController,
                children: List<Widget>.generate(images.length, (int index) {
                  return Image(
                    image: images[index],
                    fit: BoxFit.cover,
                  );
                }),
              ),
              Container(
                alignment: FractionalOffset(0.5, 0.95),
                child: TabPageSelector(
                  controller: imagesController,
                  selectedColor: MyColors.defaultColor,
                  color: Colors.grey,
                  indicatorSize: 14.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildDetails() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Alcid Number - 234XA",
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: "Quicksand",
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Finn Navian - Sofa",
              style: TextStyle(
                  fontSize: 26.0,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            subtitle: Text(
              "Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.",
              textAlign: TextAlign.justify,
            ),
            trailing: Text(
              "৳ 6000",
              style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Colors",
              style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Materials",
              style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: "Quicksand",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Icon(IconData(0xf7dd,fontFamily: "Font Awesome 5 Pro",),),
                      Text(" X30%",style: TextStyle( fontSize: 18.0,
                        fontFamily: "Quicksand",),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Icon(IconData(0xf71f,fontFamily: "Font Awesome 5 Pro",),),
                      Text(" X60%",style: TextStyle( fontSize: 18.0,
                        fontFamily: "Quicksand",),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Icon(IconData(0xf4e5,fontFamily: "Font Awesome 5 Pro",),),
                      Text(" X10%",style: TextStyle( fontSize: 18.0,
                        fontFamily: "Quicksand",),),
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 600,
          ),

        ],
      ),
    );
  }

  _buildBottomNavBar() {
    return Container(
      height: 50.0,
      child: Material(
        elevation: 2.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(flex:1,child: Row(
              children: <Widget>[
                 Expanded(child: IconButton(icon: Icon(IconData(0xf07a,fontFamily: "Font Awesome 5 Pro",),),onPressed: (){},)),
                Expanded(child: IconButton(icon: Icon(IconData(0xf14d,fontFamily: "Font Awesome 5 Pro",),),onPressed: (){},)),

              ],
            ),),
            Expanded(
              flex: 2,
              child: Container(
                color: MyColors.defaultColor,
                child: InkWell(
                  onTap: (){},
                  child: Center(
                    child: Text("Add to cart",style: TextStyle(
                        fontSize: 24.0,
                        fontFamily: "Quicksand",
                        color: Colors.white,
                        fontWeight: FontWeight.bold),),
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
