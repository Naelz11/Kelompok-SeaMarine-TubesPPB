import 'package:flutter/material.dart';
import 'package:ocean/utils/routes.dart';

class KondisiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Dark blue background color
        title: Text(
          'KONDISI LAUT',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(0, 125, 187, 1.0), // Light blue background color
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            beritaItem('assets/images/kondisi_1.png',
                'Menurut data Tim Koordinasi Nasional Penanganan Sampah Laut (TKN PSL), jumlah sampah plastik di laut Indonesia sebanyak 398.000 ton pada 2022. Jumlah itu telah menurun 35,36% dibandingkan pada 2018.'),
            SizedBox(
              height: 20,
            ),
            beritaItem('assets/images/kondisi_2.png',
                'Posisi Indonesia berada di nomor dua sebagai penyumbang sampah plastik ke lautan di dunia. China menghasilkan jumlah sampah terbesar di laut, yaitu 262,9 juta ton sampah. Selanjutnya ada Indonesia (187,2 juta ton).'),
            SizedBox(
              height: 20,
            ),
            beritaItem('assets/images/kondisi_3.png',
                'Sebanyak 30,4 persen dari total luas terumbu karang yang dimiliki oleh Indonesia berada dalam kondisi rusak atau tidak baik. Hanya sebesar 2,59 persen dan 27,14 persen yang dalam kondisi sangat baik dan baik. Selebihnya, 37,18 persen dalam kondisi kurang baik.'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[900], // Set the background color to white
        selectedIconTheme: IconThemeData(
            color: Colors.white), // Set selected icon color to white
        unselectedIconTheme: IconThemeData(
            color: Colors
                .grey), // Set unselected icon color to grey or another color
        selectedLabelStyle:
            TextStyle(color: Colors.white), // Set selected label color to white
        unselectedLabelStyle: TextStyle(
            color: Colors
                .grey), // Set unselected label color to grey or another color
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'BERANDA'),
          BottomNavigationBarItem(icon: Icon(Icons.article), label: 'BERITA'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'AKUN'),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, rHome);
              break;
            case 1:
              Navigator.pushNamed(context, rBerita);
              break;
            case 2:
              Navigator.pushNamed(context, rProfile);
              break;
          }
        },
      ),
    );
  }

  Widget beritaItem(String imagePath, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imagePath),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
