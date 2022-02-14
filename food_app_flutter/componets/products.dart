import 'package:flutter/material.dart';
import 'package:thuybtl/pages/products_details.dart';


class Products extends StatefulWidget{
  @override 
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list =[
    {
      "name":"Trà đào",
      "picture":"images/products/cach-lam-tra-dao.jpg",
      "price": "25.000",
    },

    {
      "name":"Trà sữa bạc hà",
      "picture":"images/products/tra sua bac ha.jpg",
      "price": "30.000",
    },

    {
      "name":"Trà sữa matcha",
      "picture":"images/products/tra sua matcha.jpg",
      "price": "25.000",
    },

    {
      "name":"Trà sữa ô long",
      "picture":"images/products/tra sua olong.jpg",
      "price": "35.000",
    },

    {
      "name":" Capuchino",
      "picture":"images/products/capuchino.jpg",
      "price": "40.000",
    },

    {
      "name":"Trà chanh ",
      "picture":"images/products/hong tra chanh mat ong.jpg",
      "price": "20.000",
    },

    {
      "name":"Matcha đậu đỏ",
      "picture":"images/products/matcha dau do.jpg",
      "price": "25.000",
    },

    {
      "name":" Soda việt quất",
      "picture":"images/products/soda viet quat.jpg",
      "price": "30.000",
    },

    {
      "name":" Cafe đen",
      "picture":"images/products/cafe den.jpg",
      "price": "30.000",
    },

    {
      "name":" Cafe sữa đá",
      "picture":"images/products/cafe sua da.jpg",
      "price": "35.000",
    },

    {
      "name":"Trà sữa socola",
      "picture":"images/products/cach-pha-tra-sua-socola-thom-ngon_grande.jpg",
      "price":"30.000" ,
    },

    {
      "name":"Trà việt quất",
      "picture":"images/products/tra den viet quat.jpg",
      "price": "30.000",
    },

    
  ];
 @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget{
  final prod_name;
  final prod_picture;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text('herol'),
        child: Material(
          child: InkWell(
            onTap: () 
            => Navigator.of(context).push( new MaterialPageRoute(
                builder: (context)=> new ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_picture: prod_picture,
                  product_detail_price: prod_price,
                  )
                )
                ),

            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\ $prod_price ",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}