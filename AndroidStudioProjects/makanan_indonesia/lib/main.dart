
import 'package:flutter/material.dart';

import 'detail.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Makanan Indonesia"),
        ),
        body: _PageList());
  }
}
//class
class _PageList extends StatefulWidget {
  _PageStateListState createState() => _PageStateListState();
}

class _PageStateListState extends State<_PageList> {
  List<String> judul = [
    "Mie Aceh",
    "Bika Ambon",
    "Pendap",
    "Seruit",
    "Serabi"
  ];

  List<String> subjudul = [
    "Ketika berkunjung ke Provinsi Nanggroe Aceh Darussalam akan terasa kurang",
    "Salah satu masakan kuliner asli dari daerah Indonesia adalah bika ambon",
    "Masakan pendap Bengkulu ternyata menjadi kuliner yang populer",
    "Masakan asli daerah Indonesia lainnya yaitu seruit Lampung.",
    "Serabi memang menjadi jajanan yang sudah dari dulu"
  ];

  List<String> gambar = [
    "images/MieAceh.jpg",
    "images/Bika-Ambon.jpg",
    "images/Pendap.jpg",
    "images/Seruit.jpg",
    "images/Serabi.jpg"
  ];

  List<String> penjelasan = [
    "Ketika berkunjung ke Provinsi Nanggroe Aceh Darussalam akan terasa kurang lengkap jika tidak mencicipi masakan kuliner makanan khas Daerah Aceh.Salah satu menu kuliner asli daerah Aceh adalah mie Aceh. Makanan ini juga termasuk kuliner yang begitu disukai masyarakat Indonesia. Rasa lezat dari hidangan mie Aceh membuat para penikmatnya menjadi ketagihan.Oleh sebab itulah, maka tidak mengherankan jika banyak orang yang berkunjung ke serambi mekkah tersebut mencari kuliner mie Aceh.",
    "Salah satu masakan kuliner asli dari daerah Indonesia adalah bika ambon. Bika ambon merupakan makanan khas dari daerah Medan, Sumatra Utara.Bentuk kuliner berupa kue ini dibuat dari campuran gula, telur dan santan. Biasanya, makanan bika ambon memiliki aroma yang wangi. Aroma wangi dari kuliner tersebut membuatnya menjadi makanan khas Daerah favorit dari Provinsi Sumatra Utara.",
    "Masakan pendap Bengkulu ternyata menjadi kuliner yang populer. Makanan yang yang satu ini biasanya sering dijadikan sebagai oleh – oleh asli Bengkulu. Olahan masakan lezat itu terbuat dari parutan kelapa muda yang di campur dengan bumbu khusus. Biasanya, pendap Bengkulu akan laris manis pada waktu lebaran.",
    "Masakan asli daerah Indonesia lainnya yaitu seruit Lampung. Kuliner ini dibuat dari daging ikan yang dibakar atau digoreng. Daging ikan itu biasanya akan dicampur dengan terasi atau tempoyak. Hidangan model ini akan terasa lebih nikmat apabila disajikan dengan lalapan berupa mentimun atau tomat. Makanan khas lampung ini dijamin bikin lidah berasa bergoyang karena hidangan ini dilengkapi dengan cabai yang pedas dan ditaburi bumbu yang gurih.",
    "Serabi memang menjadi jajanan yang sudah dari dulu memiliki cita rasa yang lezat dan bikin nagih dilidah. Ada banyak serabi yang ada di indonesia namun serabi jawa baratlah yang memiliki rasa begitu khas dan banyak varian."
  ];

  List<String> sampel = [
    "",
    "",
    "",
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: judul.length,
        itemBuilder: (BuildContext contex, int index) {
          final title = judul[index].toString();
          final subTitle = subjudul[index].toString();
          final img = gambar[index].toString();
          final sample = sampel[index].toString();
          final penjelasanmakanan = penjelasan[index].toString();
          return Container(
            height: 200,
            padding: EdgeInsets.all(8),
            child: GestureDetector(
              child: Stack(
                children: <Widget>[
                  backgroundImage(img),
                  Container(
                    child: topContent(title, subTitle, sample),
                  )
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                          itemJudul: title,
                          itemImage: img,
                          itemSub: subTitle,
                          qty: penjelasanmakanan,
                        )));
              },
            ),
          );
        },
      ),
    );
  }
}

backgroundImage(String gambar) {
  return new Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.luminosity),
            image: AssetImage(gambar))),
  );
}

topContent(String nama, String deskripsi, String sample) {
  return new Container(
    height: 150,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderText,
          ),
          Container(
            height: 1,
            width: 100,
            color: Colors.redAccent,
          ),
          Text(
            deskripsi,
            style: descHeaderText,
          ),

          Text(
            sample,
            style: footerHeaderText,
          )
        ],
      ),
    ),
  );
}

final baseTextStyle = const TextStyle( fontFamily: 'arial');

final bigHeaderText =
baseTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white);

final descHeaderText =
baseTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white);

final footerHeaderText =
baseTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white);

final detailstyle =
baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black);



