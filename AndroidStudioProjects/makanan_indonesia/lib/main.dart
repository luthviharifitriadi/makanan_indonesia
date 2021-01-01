import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/' : (context) => HalamanPertama(),
        MieAceh.routeName :(context) => MieAceh(),
        BikaAmbon.routeName :(context) => BikaAmbon(),
        Rendang.routeName :(context) => Rendang(),
        GulaiBelacan.routeName :(context) => GulaiBelacan(),
        MieBangka.routeName :(context) => MieBangka(),

      },
    );
  }
}

class HalamanPertama extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Makanan Indonesia'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Container(
            height: 580,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[

                Padding(

                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://makananoleholeh.com/wp-content/uploads/2020/08/Aceh-Mie-Aceh.jpg',
                    ),
                  ),
                ),


                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.rice_bowl),
                          SizedBox(height: 8.0),
                          Text('Mie Aceh'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.location_city_sharp),
                          SizedBox(height: 8.0),
                          Text(' Aceh')
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 5.0, width: 3.0, ),
                          RaisedButton(
                            child: Icon(Icons.description),
                            onPressed: (){
                              Navigator.pushNamed(context, MieAceh.routeName);
                            },

                          ),
                        ],
                      ),


                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://makananoleholeh.com/wp-content/uploads/2020/08/Sumatera-Utara-Bika-Ambon.jpg',
                    ),
                  ),
                ),


                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.rice_bowl),
                          SizedBox(height: 8.0),
                          Text('Bika Ambon'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.location_city_sharp),
                          SizedBox(height: 8.0),
                          Text('Sumatera Utara')
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 5.0, width: 3.0, ),
                          RaisedButton(
                            child: Icon(Icons.description),
                            onPressed: (){
                              Navigator.pushNamed(context, BikaAmbon.routeName);
                            },

                          ),
                        ],
                      ),


                    ],
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        'https://makananoleholeh.com/wp-content/uploads/2020/08/Sumatera-Barat-Rendang.jpg'),
                  ),
                ),


                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.rice_bowl),
                          SizedBox(height: 8.0),
                          Text('Rendang'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.location_city_sharp),
                          SizedBox(height: 8.0),
                          Text('Sumatera Barat')
                        ],
                      ),

                      Column(
                        children: <Widget>[
                          SizedBox(height: 5.0, width: 3.0, ),
                          RaisedButton(
                            child: Icon(Icons.description),
                            onPressed: (){
                              Navigator.pushNamed(context, Rendang.routeName);
                            },

                          ),
                        ],
                      ),

                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        'https://makananoleholeh.com/wp-content/uploads/2020/08/Riau-Gulai-Belacan.jpg'),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.rice_bowl),
                          SizedBox(height: 8.0),
                          Text('Gulai Belacan'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.location_city_sharp),
                          SizedBox(height: 8.0),
                          Text('Riau ')
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 5.0, width: 3.0, ),
                          RaisedButton(
                            child: Icon(Icons.description),
                            onPressed: (){
                              Navigator.pushNamed(context, GulaiBelacan.routeName);
                            },

                          ),
                        ],
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        'https://makananoleholeh.com/wp-content/uploads/2020/08/Riau-Otak-Otak.jpg'),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.rice_bowl),
                          SizedBox(height: 8.0),
                          Text('Otak- Otak'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.location_city_sharp),
                          SizedBox(height: 8.0),
                          Text('Kepulauan Riau ')
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        'https://makananoleholeh.com/wp-content/uploads/2020/08/Kepulauan-Bangka-Belitung-Mie-Bangka.jpg'),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(Icons.rice_bowl),
                          SizedBox(height: 8.0),
                          Text('Mie Bangka'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.location_city_sharp),
                          SizedBox(height: 8.0),
                          Text('Kepulauan Bangka Belitung ')
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height: 5.0, width: 3.0, ),
                          RaisedButton(
                            child: Icon(Icons.description),
                            onPressed: (){
                              Navigator.pushNamed(context, MieBangka.routeName);
                            },

                          ),
                        ],
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}


class MieAceh extends StatelessWidget {
  static const String routeName = "/MieAceh";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mie Aceh'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Container(
            height: 580,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[

                Padding(

                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://makananoleholeh.com/wp-content/uploads/2020/08/Aceh-Mie-Aceh.jpg',
                    ),
                  ),
                ),

                Padding(

                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: PerubahanText(text: 'Ketika berkunjung ke Provinsi Nanggroe Aceh Darussalam akan terasa kurang lengkap jika tidak mencicipi masakan kuliner makanan khas Daerah Aceh.Salah satu menu kuliner asli daerah Aceh adalah mie Aceh. Makanan ini juga termasuk kuliner yang begitu disukai masyarakat Indonesia.',),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),

    );
  }
}

class BikaAmbon extends StatelessWidget {
  static const String routeName = "/BikaAmbon";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bika Ambon'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Container(
            height: 580,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[

                Padding(

                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://makananoleholeh.com/wp-content/uploads/2020/08/Sumatera-Utara-Bika-Ambon.jpg',
                    ),
                  ),
                ),

                Padding(

                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: PerubahanText(text:
                      'Salah satu masakan kuliner asli dari daerah Indonesia adalah bika ambon. Bika ambon merupakan makanan khas dari daerah Medan, Sumatra Utara. Bentuk kuliner berupa kue ini dibuat dari campuran gula, telur dan santan. Biasanya, makanan bika ambon memiliki aroma yang wangi.',
                    ),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),

    );
  }
}


class Rendang extends StatelessWidget {
  static const String routeName = "/Rendang";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rendang'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Container(
            height: 580,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[

                Padding(

                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://makananoleholeh.com/wp-content/uploads/2020/08/Sumatera-Barat-Rendang.jpg',
                    ),
                  ),
                ),

                Padding(

                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: PerubahanText(text:
                      'Makanan khas Daerah di Indonesia berikutnya yaitu rendang Padang. Sesuai dengan namanya, rendang Padang berasal dari Provinsi Sumatra Barat. Bahan dasar untuk membuat masakan ini pun sangat mudah untuk didapatkan.',
                    ),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),

    );
  }
}


class GulaiBelacan extends StatelessWidget {
  static const String routeName = "/GulaiBelacan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gulai Belacan'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Container(
            height: 580,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[

                Padding(

                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://makananoleholeh.com/wp-content/uploads/2020/08/Riau-Gulai-Belacan.jpg',
                    ),
                  ),
                ),

                Padding(

                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: PerubahanText(text:
                      'Daerah Riau ternyata juga memiliki sebuah masakan kuliner yang lezat. Masakan kuliner lezat itu bernama gulai belacan. Kuliner ini dibuat dari bahan dasar berupa kuah yang telah dicampur dengan terasi. Selain itu terdapat pula daging, udang atau ikan. Berbagai bahan ini mampu membuat gulai belacan terasa nikmat.',
                    ),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}


class MieBangka extends StatelessWidget {
  static const String routeName = "/MieBangka";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mie Bangka'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Container(
            height: 580,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[

                Padding(

                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://makananoleholeh.com/wp-content/uploads/2020/08/Aceh-Mie-Aceh.jpg',
                    ),
                  ),
                ),

                Padding(

                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: PerubahanText(text:
                      'Jika anda penggemar mie, maka biasa mencoba masakan kuliner dari daerah Bangka. Masakan kuliner asli dari Bangka ini bernama Mie Bangka.Sesuai dengan namanya, masakan itu terbuat dari bahan dasar berupa mie.Bahan dasar berupa mie tersebut dicampurkan dengan kuah yang diberi bumbu khusus. Alhasil rasa mie pun akan semakin lezat.',
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),


    );
  }
}



class Heading extends StatelessWidget {
  final String text;
  Heading({Key key, this.text});
  @override
  Widget build(BuildContext context){
    return Text(text, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold));
  }
}

class PerubahanText extends StatefulWidget {

  final String text;

  const PerubahanText({Key key, this.text}) : super(key: key);

  @override
  _PerubahanTextState createState() => _PerubahanTextState();
}

class _PerubahanTextState extends State<PerubahanText> {
  double _ukuranText = 16.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _ukuranText)),
        RaisedButton(
          child: Text("Perbesar"),
          onPressed: (){
            setState(() {
              _ukuranText = 32.0;
            });
          },
        )
      ],
    );
  }
}

