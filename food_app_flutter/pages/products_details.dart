import 'package:flutter/material.dart';
import 'package:thuybtl/main.dart';
//import 'package:thuybtl/componets/products.dart';

class ProductDetails extends StatefulWidget{
  final product_detail_name;
  final product_detail_price ;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_price,
    this.product_detail_picture
  });

  @override 
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
          child: Text('Her Coffee')),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
               color: Colors.white,
            ), 
               onPressed: (){}
            ),
      
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container( 
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
            footer: new Container(
              color: Colors.white70,
              child: ListTile(
                leading: new Text(widget.product_detail_name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                title: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("${widget.product_detail_price}",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                      ),
                  ],
                ),
                )
            ),
            ),
          ),


          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("Ch???n Size"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("Close"),
                          ),
                        ],
                      );
                    }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                  elevation: 0.2,
                  child: Row(
                   children: <Widget>[
                     Expanded(
                       child: new Text("Size"),
                     ),
                     Expanded(
                       child: new Icon(Icons.arrow_drop_down)
                     ),
                   ],
                 ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("S??? L?????ng"),
                        content: new Text("Ch???n S??? L?????ng"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("Close"),
                          ),
                        ],
                      );
                    }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                  elevation: 0.2,
                  child: Row(
                   children: <Widget>[
                     Expanded(
                       child: new Text("S??? L?????ng"),
                     ),
                     Expanded(
                       child: new Icon(Icons.arrow_drop_down)
                     ),
                   ],
                 ),
                ),
              ),
            ],
          ),


          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Mua ngay"),
                ),
              ),

              new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.black,), onPressed: (){}),  
              new IconButton(icon: Icon(Icons.favorite_border, color: Colors.red,), onPressed: (){}),                
             ],
          ),
          
          Divider(),
          new ListTile(
            title: new Text("Th??ng tin chi ti???t s???n ph???m"),
            subtitle: new Text('    Nh???ng h????ng v??? ???????c pha c??ng v???i tr?? tr??n ch??u,' 
            'ta m???i th???y ???????c s??? ??a d???ng v?? c??ng c???a th???c u???ng ????n gi???n m?? quy???n r?? n??y.'
            ' T??? nh???ng h????ng v??? tr??i c??y nh?? d??u, t??o xanh, chanh d??y, xo??i, chanh, d??a h???u, nho, v???i, ????o, d???a,...' 
            'cho ?????n nh???ng s??ng t???o ?????c ????o nh?? b??nh pudding, mocha, m??, h???nh nh??n, g???ng, hoa h???ng, caramel,... '
            'Tr?? tr??n ch??u ????? ng?????i u???ng t??? ch??? bi???n n??n th???c u???ng c???a ri??ng m??nh.'
            ' M???i h????ng v??? ph???n ??nh m???t c??ch c???m nh???n ???m th???c r???t ri??ng, t???o n??n s??? phong ph?? cho c??? th???c u???ng v?? ng?????i th?????ng th???c.'
            ),
          ),
          
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("T??n s???n ph???m", style: TextStyle(color: Colors.black),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name), 
              ),
            ],
          ),

          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Gi?? s???n ph???m", style: TextStyle(color: Colors.black),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_price), 
              ),
            ],
          ),
        ],
      ),
    );

  }
}