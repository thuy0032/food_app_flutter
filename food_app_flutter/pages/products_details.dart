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
                        content: new Text("Chọn Size"),
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
                        title: new Text("Số Lượng"),
                        content: new Text("Chọn Số Lượng"),
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
                       child: new Text("Số Lượng"),
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
            title: new Text("Thông tin chi tiết sản phẩm"),
            subtitle: new Text('    Những hương vị được pha cùng với trà trân châu,' 
            'ta mới thấy được sự đa dạng vô cùng của thức uống đơn giản mà quyến rũ này.'
            ' Từ những hương vị trái cây như dâu, táo xanh, chanh dây, xoài, chanh, dưa hấu, nho, vải, đào, dứa,...' 
            'cho đến những sáng tạo độc đáo như bánh pudding, mocha, mè, hạnh nhân, gừng, hoa hồng, caramel,... '
            'Trà trân châu để người uống tự chế biến nên thức uống của riêng mình.'
            ' Mỗi hương vị phản ánh một cách cảm nhận ẩm thực rất riêng, tạo nên sự phong phú cho cả thức uống và người thưởng thức.'
            ),
          ),
          
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Tên sản phẩm", style: TextStyle(color: Colors.black),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name), 
              ),
            ],
          ),

          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Giá sản phẩm", style: TextStyle(color: Colors.black),),),
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