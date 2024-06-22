import 'package:flutter/material.dart';
import 'package:ocean/utils/routes.dart';

class PencegahanPerlindunganScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Dark blue background color
        title: Text(
          'PENCEGAHAN DAN PERLINDUNGAN LAUT ',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(0, 125, 187, 1.0), // Light blue background color
        child: ListView(
          padding:
              EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
          children: <Widget>[
            Image.asset('assets/images/pencegahan_perlindungan.png'),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Pencemaran laut merupakan salah satu masalah lingkungan yang dihadapi saat ini dan seringkali disebabkan oleh aktivitas atau kegiatan manusia. Sebagian besar pencemaran laut yang disebabkan oleh manusia dilakukan baik secara langsung maupun tidak langsung. Indonesia yang sebagian besar wilayahnya adalah laut dan banyak orang yang menggantungkan hidup dari laut sangatlah perlu menjaga laut dari berbagai pencemaran agar sumber daya laut tetap lestari',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Pencemaran Laut menurut Peraturan Pemerintah No.19/1999 tentang Pengendalian Pencemaran dan/atau Perusakan Laut adalah masuknya atau dimasukkannya makhluk hidup, zat, energi, dan/atau komponen lain ke dalam lingkungan laut oleh kegiatan manusia sehingga kualitasnya turun sampai ke tingkat tertentu yang menyebabkan lingkungan laut tidak sesuai lagi dengan baku mutu dan/atau fungsinya.',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Pencemaran laut didefinisikan oleh para ahli yang tergabung pada badan-badan di bawah Perserikatan Bangsa-Bangsa adalah perantara dari manusia, baik secara langsung atau tidak langsung, dari bahan atau energi ke dalam lingkungan laut (termasuk) yang mengakibatkan efek merusak seperti membahayakan sumber daya hidup, berbahaya bagi kesehatan manusia, menjadi halangan untuk kegiatan laut termasuk penangkapan ikan, kualitas penurunan untuk penggunaan air laut dan kenyamanan laut yang berkurang.',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Selama ini kita tidak sadar, dua profesi telah turut hilang yakni nelayan dan pedagang ikan. Tingkat pencemaran di beberapa wilayah perairan Indonesia pada saat ini telah berada pada kondisi yang tidak terkendali, serta laju sedimentasi yang masuk ke perairan juga terus meningkat. Usaha kelautan dan perikanan adalah kegiatan berbasis sumber daya alam. Kerusakan lingkungan perairan akan menjadi malapetaka, baik saat ini maupun masa depan. Oleh karena itu, upaya pelestarian lingkungan perairan merupakan program yang sangat strategis untuk meningkatkan produktivitas perikanan Indonesia agar kerugian secara ekologis dan ekonomis tidak semakin menyengsarakan masyarakat.',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Beberapa hal yang perlu kita ketahui penyebab pencemaran laut dan kerusakan ekosistem perairan laut Indonesia pada umumnya diakibatkan karena pemanfaatan sumber daya yang tidak terkendali dengan cara ilegal, seperti:',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '1. Penangkapan ikan di daerah terumbu karang dengan menggunakan bahanberacun dan bahan peledak.',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '2. Penebangan bakau untuk bahan baku kertas, arangdan bangunan serta konversi lahan pesisir yang dibuka untuk pertambakan,pertanian/perkebunan, industri dan pemukiman.',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '3. Pembuangan limbah pabrik langsung ke sungai dan laut.',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '4. Pencemaran laut akibat tumpahan minyak dan pembuangan zat-zat yang berbahaya dari kapal-kapal.',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '5. Aktivitas wisata yang tidak memperhatikan kelestarian ekosistem laut.',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '6. Reklamasi pantai dan penambangan pasir laut.',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '7. Penambangankarang untuk bahan bangunan atau kapur dan pengambilan karang hidup untuk tujuan komersial (perdagangan).',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '8. Pencurian benda berharga muatan kapal tenggelam (BMKT) dan kekayaan laut lainnya.',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '9. Pembuangan sampah dari aktivitas hulu yang muaranya ke laut.',
                textAlign: TextAlign.justify, // Text alignment justified
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
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
