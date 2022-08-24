// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Pembayaran extends StatelessWidget {
  const Pembayaran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFededf5),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pembayaran"),
      ),
      body: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: ListTile(
              title: Text("UKT"),
              subtitle: Text("2022-06-30 20:21:56"),
              trailing: Text(
                "Rp 1.000.000",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: ListTile(
              title: Text("SPI"),
              subtitle: Text("2022-08-20 10:05:08"),
              trailing: Text(
                "Rp 1.000.000",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: ListTile(
              title: Text("SPP"),
              subtitle: Text("2022-07-15 17:07:25"),
              trailing: Text(
                "Rp 500.000",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: ListTile(
              title: Text("BPP"),
              subtitle: Text("022-07-19 19:10:30"),
              trailing: Text(
                "Rp 500.000",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: ListTile(
              title: Text("SPP"),
              subtitle: Text("2022-07-15 17:07:25"),
              trailing: Text(
                "Rp 500.000",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Material(
              //Wrap with Material
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.0)),

              color: Color(0xFF801E48),
              clipBehavior: Clip.antiAlias, // Add This
              child: MaterialButton(
                minWidth: 200.0,
                height: 35,
                color: Color(0xFF801E48),
                child: Text('Tampilkan data lebih banyak',
                    style: TextStyle(fontSize: 16.0, color: Colors.white)),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
