import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:makanan_indonesia/main.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class DetailPage extends StatelessWidget {
  final String itemJudul;
  final String itemSub;
  final String itemImage;
  final String qty;


  const DetailPage(
      {Key key, this.itemJudul, this.itemSub, this.itemImage, this.qty})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text( itemJudul,
              style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              icon: Icon(Icons.star),
              color: Colors.white,
              onPressed: () async {
                showDialog<IconData>(
                  context: context,
                  builder: (context) => MyRating(),
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(child: Image.asset(itemImage)),
                SizedBox(height: 10),
                Text(
                  itemJudul,
                  style: TextStyle(color: Colors.redAccent, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Text(itemSub ,style: detailstyle),
                SizedBox(height: 10,),
                Text( qty , style: detailstyle),
              ]),
        ));
  }
}

class MyRating extends StatefulWidget {
  MyRating({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyRating> {
  var _ratingController = TextEditingController();
  double _userRating = 3.0;
  int _ratingBarMode = 1;
  bool _isRTLMode = false;
  bool _isVertical = false;
  IconData _selectedIcon;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
            textTheme: TextTheme(
                headline6: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.white,
                ))),
      ),
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Nilai Aplikasi'),
            actions: [
              IconButton(
                icon: Icon(Icons.settings),
                color: Colors.white,
                onPressed: () async {
                  _selectedIcon = await showDialog<IconData>(
                    context: context,
                    builder: (context) => IconAlert(),
                  );
                  _ratingBarMode = 1;
                  setState(() {});
                },
              ),
            ],
          ),
          body: Directionality(
            textDirection: _isRTLMode ? TextDirection.rtl : TextDirection.ltr,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  _heading("Nilai Aplikasi Kami"),
                  RatingBarIndicator(
                    rating: _userRating,
                    itemBuilder: (context, index) => Icon(
                      _selectedIcon ?? Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 50.0,
                    unratedColor: Colors.amber.withAlpha(50),
                    direction: _isVertical ? Axis.vertical : Axis.horizontal,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextFormField(
                      controller: _ratingController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter rating",
                          labelText: "Enter rating",
                          suffixIcon: MaterialButton(
                            onPressed: () {
                              setState(() {
                                _userRating = double.parse(
                                    _ratingController.text ?? "0.0");
                              });
                            },
                            child: Text('Rate'),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _radio(int value) {
    return Expanded(
      child: RadioListTile(
        value: value,
        groupValue: _ratingBarMode,
        dense: true,
        title: Text(
          "Mode $value",
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        onChanged: (value) {
          setState(() {
            _ratingBarMode = value;
          });
        },
      ),
    );
  }


  Widget _heading(String text) => Column(
    children: [
      Text(text,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 24.0,
          )),
      SizedBox(
        height: 20,
      )
    ],
  );
}

class IconAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Selected Icon",
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      titlePadding: EdgeInsets.all(12.0),
      contentPadding: EdgeInsets.all(0),
      content: Wrap(
        children: [
          _iconButton(context, Icons.home),
          _iconButton(context, Icons.airplanemode_active),
          _iconButton(context, Icons.euro_symbol),
          _iconButton(context, Icons.beach_access),
          _iconButton(context, Icons.attach_money),
          _iconButton(context, Icons.music_note),
          _iconButton(context, Icons.android),
          _iconButton(context, Icons.toys),
          _iconButton(context, Icons.language),
          _iconButton(context, Icons.landscape),
          _iconButton(context, Icons.ac_unit),
          _iconButton(context, Icons.star),
        ],
      ),
    );
  }

  _iconButton(BuildContext context, IconData icon) => IconButton(
    icon: Icon(icon),
    onPressed: () => Navigator.pop(context, icon),
    splashColor: Colors.amberAccent,
    color: Colors.amber,
  );
}