import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:thuybtl/componets/horizontal_listview.dart';
import 'package:thuybtl/componets/products.dart';
import 'package:thuybtl/componets/thongtin.dart';
import 'package:thuybtl/pages/products_details.dart';
import 'package:thuybtl/pages/dathang.dart';
import 'package:thuybtl/componets/dathang_products.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override 
  Widget build(BuildContext context) {
    Widget image_caurosel = new Container(
    height: 300.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/thiet-ke-menu-dep.jpg'),
          AssetImage('images/cac-loai-do-uong.jpg'),
          AssetImage('images/unnamed.jpg'),
          AssetImage('images/ly-tra-sua-tran-chau.jpg'),
          AssetImage('images/foody-hg-milktea-coffee.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: Text('Her Coffee'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
               color: Colors.white,
            ), 
               onPressed: (){}
               
            ),

          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
               color: Colors.white,
            ), 
               onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new DatHang())); 
               }
            ),
      
        ],
      ),

    drawer: new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
             accountName: Text(
               "Her Coffee",
               style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
               ),
             accountEmail: Text(
               "hercoffee@gamil.com",
               style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
               ),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundImage: AssetImage('images/hình-địa-điểm.jpg'),
                  radius: 100,
              ),
            ),
            otherAccountsPictures: <Widget>[
                  Icon(
                    Icons.add_alert,
                    color: Colors.white,
                  ),
                ],
                onDetailsPressed: () {},
                decoration: new BoxDecoration(
                  color: Colors.blue,
                ),

          ),
          InkWell(
             child: ListTile(
              title: Text('Trang chủ'),
              leading: Icon(Icons.home, color: Colors.blue),
             ),
             onTap: () {
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> HomePage()));
 
             },
            ),

            InkWell(
             child: ListTile(
               title: Text('Giới thiệu'),
               leading: Icon(Icons.dashboard, color: Colors.black),
             ),
             onTap: () {
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> ThongTin()));
 
             },
            ),

            InkWell(
             child: ListTile(
               title: Text('Menu'),
               leading: Icon(Icons.photo_album, color: Colors.black),
             ),
             onTap: () {
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> Products()));
 
             },
            ),

            InkWell(
             child: ListTile(
               title: Text('Đặt hàng'),
               leading: Icon(Icons.shopping_basket, color: Colors.red),
             ),
             onTap: () {
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> DatHang()));
 
             },
            ),

            InkWell(
             onTap: () {},
             child: ListTile(
               title: Text('Email phản hồi'),
               leading: Icon(Icons.edit, color: Colors.black),
             ),
            ),

            InkWell(
             onTap: () {},
             child: ListTile(
               title: Text('Setting'),
               leading: Icon(Icons.settings, color: Colors.black),
             ),
            ),

            InkWell(
             onTap: () {},
             child: ListTile(
               title: Text('About'),
               leading: Icon(Icons.help, color: Colors.blue),
             ),
            ),

            ],
          ),
        ),
    body: new ListView(
        children: <Widget>[
          image_caurosel,
          new Padding(padding: const EdgeInsets.all(4.0),
            child: new Text('Categoryes'),
          ),
          
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(4.0),
            child: new Text('Recent products'),
          ),
          Container(
            height: 320.0,
            child: Products(),
            )
        ],
      ),
    );
  
  }
 }


