import 'package:flutter/material.dart';
import 'package:thuybtl/componets/dathang_products.dart';


class DatHang extends StatefulWidget{
  @override 
  _DatHangState createState() => _DatHangState();
}

class _DatHangState extends State<DatHang> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('Đặt Hàng'),
        actions: <Widget>[
          new IconButton( 
            icon: Icon(
            Icons.search,
            color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),

      body: new DatHang_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
          Expanded(child: ListTile(
            title: new Text("Total:"),
            subtitle: new Text("100.000")
          ),),

          Expanded(
            child: new MaterialButton(onPressed:  (){},
            child: new Text("Check out", style: TextStyle(color: Colors.white),), 
            color: Colors.red,
          ),
          )
        ],)
      ),
    );
  }
}