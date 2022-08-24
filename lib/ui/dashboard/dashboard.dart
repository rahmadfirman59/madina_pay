// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int activeIndex = 0;
  final imageUrl = [
    "https://media.istockphoto.com/id/1347663254/id/foto/happy-halloween-holiday-greeting-card-desain-teks-kaligrafi-tulisan-tangan-dengan-fall.webp?s=612x612&w=is&k=20&c=Mjx-ql-eZxAvi1bGNqyt89_nIYGEX9cN-ObiB_EaA5M=",
    "https://media.istockphoto.com/id/1179767112/id/foto/berbagai-labu-labu-dan-labu-berwarna-cerah.webp?s=612x612&w=is&k=20&c=mKB8GjoeknTSHTVJHQ38aRhCzHnbJjLbFjiRk7ToKQc=",
    "https://media.istockphoto.com/id/1251684125/id/foto/pengusaha-dan-tim-pengusaha-menunjuk-pada-pertemuan-grafik-untuk-merencanakan-strategi-untuk.webp?s=612x612&w=is&k=20&c=hwWl1I-G_7TtcjkDiXqFJDd6MSO-r7e1YkmVCD4ihec=",
    "https://media.istockphoto.com/id/1346684222/id/foto/selamat-ulang-tahun-render-3d-tipografi-berwarna-warni.webp?s=612x612&w=is&k=20&c=cc2TuD1YWRGatp9mveNOc8I3Sy6s1YkhD7ttD3-skO0="
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFededf5),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.black12),
              height: 100,
              child: AppBar(
                title: Text("Dashboard"),
                centerTitle: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      Text("Saldo"),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Rp5.895.000",
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        children: [
                          Text("Pembayaran"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Rp5.895.000",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        children: [
                          Text("Tagihan"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "2.000.000",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 240, 0, 0),
              child: Text(
                "Promosi",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  CarouselSlider.builder(
                    itemCount: imageUrl.length,
                    itemBuilder: (context, index, realIndex) {
                      final listItem = imageUrl[index];
                      return buildImage(listItem, index);
                    },
                    options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            activeIndex = index;
                          });
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildIndicator()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 500, 0, 0),
              child: Text(
                "Transaksi Terakhir",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 530, 10, 0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text("Anda belum melakukan transaksi apapun.")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      color: Colors.grey,
      child: Image.network(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
        activeIndex: activeIndex, count: imageUrl.length);
  }

  // Widget buildBody() {
  //   return
  // }
}
