import 'package:flutter/material.dart';
import 'package:ocean/utils/routes.dart';

class InformasiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Dark blue background color
        title: Text(
          'INFORMASI SINGKAT PADA LAUTAN',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(
            0, 125, 187, 1.0), // Set the background color to a lighter blue
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Image.asset('assets/images/pulau.png'),
                ),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Indonesia adalah negara kepulauan terbesar di dunia dengan lebih dari 17.000 pulau, yang menjadikannya memiliki wilayah laut yang sangat luas dan beragam. Berikut adalah beberapa aspek penting mengenai informasi laut di Indonesia:',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20),
                _buildSectionTitle('1. Geografi dan Luas Wilayah Laut'),
                _buildSectionContent(
                    'Indonesia memiliki luas laut sekitar 3,25 juta kilometer persegi, yang mencakup Zona Ekonomi Eksklusif (ZEE) seluas 2,7 juta kilometer persegi. Negara ini dibatasi oleh Samudra Hindia di sebelah selatan dan barat, Samudra Pasifik di sebelah utara, dan Laut Cina Selatan di sebelah barat laut.'),
                SizedBox(height: 20),
                _buildSectionTitle('2. Kekayaan Biodiversitas Laut'),
                _buildSectionContent(
                    'Perairan Indonesia dikenal dengan kekayaan biodiversitasnya, termasuk:\n- Terumbu Karang: Indonesia memiliki sekitar 15% dari total terumbu karang dunia. Terumbu karang ini mendukung keanekaragaman hayati laut yang sangat tinggi.\n- Ikan dan Biota Laut: Ada lebih dari 2.000 spesies ikan dan ribuan spesies biota laut lainnya yang hidup di perairan Indonesia.\n- Mangrove dan Padang Lamun: Hutan mangrove di Indonesia adalah yang terluas di dunia, yang memainkan peran penting dalam ekosistem laut dan darat.'),
                SizedBox(height: 20),
                _buildSectionTitle('3. Ekonomi Laut'),
                _buildSectionContent(
                    'Sektor ekonomi yang berkaitan dengan laut memainkan peran penting dalam perekonomian Indonesia, termasuk:\n- Perikanan: Indonesia adalah salah satu produsen ikan terbesar di dunia. Sektor perikanan menyediakan lapangan kerja bagi jutaan orang dan menyumbang secara signifikan terhadap Produk Domestik Bruto (PDB) nasional.\n- Pariwisata Bahari: Destinasi seperti Bali, Raja Ampat, dan Lombok terkenal dengan pariwisata baharinya yang menarik wisatawan dari seluruh dunia.\n- Transportasi Laut: Sebagai negara kepulauan, transportasi laut merupakan sarana utama untuk distribusi barang dan mobilitas penduduk.'),
                SizedBox(height: 20),
                _buildSectionTitle('4. Masalah Lingkungan'),
                _buildSectionContent(
                    'Meskipun kaya akan sumber daya laut, Indonesia menghadapi berbagai masalah lingkungan, antara lain:\n- Polusi Laut: Sampah plastik dan limbah industri mencemari perairan Indonesia, yang berdampak negatif pada ekosistem laut.\n- Overfishing: Penangkapan ikan yang berlebihan dan ilegal mengancam keberlanjutan stok ikan.\n- Perubahan Iklim: Kenaikan suhu laut dan permukaan air laut mengempengaruhi terumbu karang dan komunitas pesisir.'),
                SizedBox(height: 20),
                _buildSectionTitle('5. Pengelolaan dan Konservasi'),
                _buildSectionContent(
                    'Indonesia telah mengambil berbagai langkah untuk mengelola dan melindungi sumber daya lautnya, termasuk:\n- Kawasan Konservasi Laut: Pemerintah telah menetapkan beberapa kawasan konservasi laut untuk melindungi ekosistem laut dan biodiversitasnya.\n- Peraturan dan Kebijakan: Implementasi berbagai regulasi seperti moratorium kapal ikan asing dan penegakan hukum terhadap penangkapan ikan ilegal.\n- Kerjasama Internasional: Indonesia aktif dalam berbagai kerjasama internasional untuk konservasi laut dan pengelolaan perikanan.'),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Dengan potensi dan tantangan yang dimiliki, pengelolaan yang bijaksana dan berkelanjutan terhadap sumber daya laut sangat penting bagi masa depan ekonomi dan lingkungan Indonesia.',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
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

  Widget _buildSectionTitle(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        content,
        style: TextStyle(fontSize: 12, color: Colors.white),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
