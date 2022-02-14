import 'package:flutter/material.dart';
import 'package:thuybtl/pages/dathang.dart';


class DatHang_products extends StatefulWidget{
  @override 
  _DatHang_productsState createState() => _DatHang_productsState();
}

class _DatHang_productsState extends State<DatHang_products> {
  var Products_on_the_cart = [
    {
      "name":"Trà sữa matcha",
      "picture":"images/products/tra sua matcha.jpg",
      "price": "25.000",
      "size": "M",
      "số lượng": "2",
    },
    {
      "name":"Trà sữa socola",
      "picture":"images/products/cach-pha-tra-sua-socola-thom-ngon_grande.jpg",
      "price":"30.000" ,
      "size": "M",
      "số lượng": "1",
    },

    {
      "name":"Trà việt quất",
      "picture":"images/products/tra den viet quat.jpg",
      "price": "30.000",
      "size": "M",
      "số lượng": "1",
    },



  
  ];

  @override 
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index){
        return Single_DatHang_Product(
          DatHang_prod_name: Products_on_the_cart[index]["name"],
          DatHang_prod_picture: Products_on_the_cart[index]["picture"],
          DatHang_prod_price: Products_on_the_cart[index]["price"],
          DatHang_prod_SoLuong: Products_on_the_cart[index]["SoLuong"],
          DatHang_prod_Size: Products_on_the_cart[index]["size"],
          );
      } 
      );    
  }
}

class Single_DatHang_Product extends StatelessWidget {
  final DatHang_prod_name;
  final DatHang_prod_picture;
  final DatHang_prod_price;
  final DatHang_prod_Size;
  final DatHang_prod_SoLuong;

  Single_DatHang_Product({
    this.DatHang_prod_name,
    this.DatHang_prod_picture,
    this.DatHang_prod_price,
    this.DatHang_prod_Size,
    this.DatHang_prod_SoLuong
  });
  @override 
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(DatHang_prod_picture, width: 80.0,
         height: 80.0,
        ),

        title: new Text(DatHang_prod_name),

        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(DatHang_prod_Size, style: TextStyle(color: Colors.red),),
                ),

                 new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                   child: new Text("SoLuong:"),
                 ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(DatHang_prod_SoLuong, style: TextStyle(color: Colors.red),),
                ),
              ],
           ),

           new Container (
             alignment: Alignment.topLeft,
             child: new Text(
               "${DatHang_prod_price}", 
               style: TextStyle(
                 fontSize: 17.0,
                 fontWeight: FontWeight.bold,
                 color: Colors.red,
                 ),
                ),
            ), 
          ],
        ),
      ),
    );
  }
}