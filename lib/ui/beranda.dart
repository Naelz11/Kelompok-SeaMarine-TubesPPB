import 'package:flutter/material.dart';
import 'package:ocean/ui/berita.dart';
import 'package:ocean/ui/flora_fauna.dart';
import 'package:ocean/ui/informasi.dart';
import 'package:ocean/ui/kondisi.dart';
import 'package:ocean/ui/pencegahan_perlindungan.dart';
import 'package:ocean/ui/profil.dart';
import 'package:ocean/utils/routes.dart';

class BerandaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Dark blue background color
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.blue[900]),
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[
                  200], // Ganti dengan warna latar belakang yang Anda inginkan
            ),
            child: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.pushNamed(
                    context, rProfile); // Handle profile icon tap
              },
              color: Colors.black, // Ganti dengan warna ikon yang sesuai
            ),
          ),
          SizedBox(width: 10)
        ],
      ),
      body: Container(
        color: Color.fromRGBO(0, 125, 187, 1.0), // Main background color
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Color.fromRGBO(
                    0, 125, 187, 1.0), // Light blue background color for body
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            _buildImageButton(
                                'assets/images/news.png', 'BERITA', () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BeritaScreen(),
                                ),
                              );
                            }),
                            SizedBox(
                              width: 50,
                            ),
                            _buildImageButton('assets/images/flora_fauna.png',
                                'FLORA & FAUNA', () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FloraFaunaScreen(),
                                ),
                              );
                            }),
                            SizedBox(
                              width: 30,
                            ),
                            _buildImageButton(
                                'assets/images/waves.png', 'KONDISI LAUT', () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => KondisiScreen(),
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildImageButton(
                                'assets/images/shield.png', 'PERLINDUNGAN LAUT',
                                () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PencegahanPerlindunganScreen(),
                                ),
                              );
                            }),
                            SizedBox(
                              width: 8,
                            ),
                            _buildImageButton(
                                'assets/images/info.png', 'INFORMASI LAUT', () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => InformasiScreen(),
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            'assets/images/artikel_1.png'), // Replace with your image
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Text(
                      //     'MARI JAGA DAN LINDUNGI LAUT KITA BERSAMA',
                      //     style: TextStyle(
                      //         fontSize: 16, fontWeight: FontWeight.bold),
                      //     textAlign: TextAlign.center,
                      //   ),
                      // ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Artikel",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildArticleSection(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
        currentIndex: 0,
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

  Widget _buildImageButton(String imagePath, String label, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 60,
            height: 60,
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(fontSize: 11, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildArticleSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 30.0), // Margin on left and right
            child: _buildArticleCard(
              'Laut Indonesia, Kepala Banyak yang Terjebak',
              'assets/images/artikel_2.png',
              () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 30.0), // Margin on left and right
            child: _buildArticleCard(
              'Cerita soal Laut Indonesia Bappenas: Banyak yang...',
              'assets/images/artikel_3.png',
              () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildArticleCard(String title, String imagePath, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        type: MaterialType.transparency, // Set the background to transparent
        child: Card(
          color:
              Colors.transparent, // Ensure the Card background is transparent
          elevation: 0, // Remove the elevation shadow
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 340,
                height: 150,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
