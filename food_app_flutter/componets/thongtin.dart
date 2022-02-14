import 'package:flutter/material.dart';

class ThongTin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Welcome Her Coffee',
                    style: TextStyle(
                      color: Colors.red[500],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Address: 183 Trần Đăng Ninh, P. Dịch Vọng, Q. Cầu Giấy, Hà Nội                                        '
                  'Facebook: Her Coffee',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Counter(),
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.search, 'SEACH'),
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Welcome to Her Coffee '),
      ),
      body:ListView(
        children: [
          Image.asset(
            'images/view.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          textSection,
          buttonSection,
        ],
      ),
      );
  }
  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(            
      ' Her Coffee hiện đang là một món đồ uống được nhiều người yêu thích với công thức pha'
          'chế đặc biệt cùng hương vị lạ miệng, thiết kế độc đáo. '
          'Mục tiêu của Her Coffee là chất lượng đặt lên hàng đầu :An toàn, vệ sinh và ngon miệng.'
          'Việc sử dụng các nguyên liệu an toàn, tự nhiên và vệ sinh là ưu tiên hàng đầu của Her Coffee.',
          
      softWrap: true,
    ),
  );
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

    class Counter extends StatefulWidget{
      @override
      _CounterState createState() => _CounterState();
    }
    class _CounterState extends State<Counter> {
      int _counter = 0;
      void _increment() {
        setState(() {
          _counter ++;
        });
      }

      @override
      Widget build(BuildContext context) {
        return Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.star,
                color: Colors.red[500],
              ),
              onPressed: _increment,
            ),
            Text('$_counter'),
          ],
        );
      }
    }

