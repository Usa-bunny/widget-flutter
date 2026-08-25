import 'package:flutter/material.dart';
import 'package:learn_flutter/components/card.dart';

class StlessWidget extends StatelessWidget {
  StlessWidget({super.key});

  final List<dynamic> _data = [
    [
      "https://awsimages.detik.net.id/community/media/visual/2023/01/12/antam-hadirkan-emas-batangan-edisi-imlek-ini-penampakannya_169.jpeg?w=700&q=90.png",
      "Harga Emas Antam Ambruk!",
      "Harga emas Antam hari ini turun sangat dalam setelah kemarin sempat melonjak tinggi. Harga emas Antam 24 karat hari ini turun Rp 30.000 per gram dan kini bertahan di level Rp 2.680.000 per gram.\n\nBaca artikel detikfinance, \"Harga Emas Antam Ambruk!\" selengkapnya https://finance.detik.com/berita-ekonomi-bisnis/d-8614728/harga-emas-antam-ambruk.",
    ],
    [
      "https://awsimages.detik.net.id/community/media/visual/2021/12/14/cng-gaslink-1_169.jpeg?w=700&q=90.png",
      "LPG 3 Kg Bakal Diganti, CNG 3 Kg Diuji Coba",
      "Pemerintah berencana mengganti LPG 3 Kg dengan CNG 3 Kg. Uji coba akan dilakukan pekan depan.\n\nBaca artikel detikfinance selengkapnya https://finance.detik.com/energi/d-8614730/lpg-3-kg-bakal-diganti-cng-3-kg-diuji-coba.",
    ],
    [
      "https://awsimages.detik.net.id/community/media/visual/2021/09/08/syarat-bikin-akta-kelahiran-anak-2021-simak-di-sini_169.jpeg?w=700&q=90.png",
      "Akta Kelahiran Langsung Terbit Usai Bayi Lahir",
      "Pemerintah meluncurkan kebijakan baru: akta kelahiran langsung terbit setelah bayi lahir.\n\nBaca artikel detikfinance selengkapnya https://finance.detik.com/berita-ekonomi-bisnis/d-8614732/akta-kelahiran-langsung-terbit-usai-bayi-lahir.",
    ],
    [
      "https://awsimages.detik.net.id/community/media/visual/2015/07/27/a1dfc702-9caf-415e-aa20-a367dad1b9dc_169.jpg?w=700&q=90.png",
      "Rencana Pemerintah Batasi Pertalite buat Orang Kaya",
      "Pemerintah berencana membatasi pembelian Pertalite hanya untuk masyarakat berpenghasilan rendah.\n\nBaca artikel detikfinance selengkapnya https://finance.detik.com/energi/d-8614734/rencana-pemerintah-batasi-pertalite-buat-orang-kaya.",
    ],
    [
      "https://awsimages.detik.net.id/community/media/visual/2026/04/13/perundingan-damai-gagal-trump-perintahkan-blokade-selat-hormuz-1776052199145_169.jpeg?w=700&q=90.png",
      "Iran-AS Masih Ribut soal Selat Hormuz, Harga Minyak Naik Lagi",
      "Ketegangan Iran-AS di Selat Hormuz kembali memicu kenaikan harga minyak dunia.\n\nBaca artikel detikfinance selengkapnya https://finance.detik.com/energi/d-8614736/iran-as-masih-ribut-soal-selat-hormuz-harga-minyak-naik-lagi.",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text("Today News", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.yellow[700],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: GridView.builder(
          padding: EdgeInsets.all(25),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 25,
          ),
          itemCount: _data.length,
          itemBuilder: (context, index) {
            return MyCard(
              imageUrl: _data[index][0],
              title: _data[index][1],
              content: _data[index][2],
            );
          },
        ),
      ),
    );
  }
}
