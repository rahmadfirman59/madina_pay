// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Transaksi extends StatelessWidget {
  const Transaksi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Transaksi"),
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
              title: Text("SPP Agustus 2022"),
              trailing: Text(
                "Rp 250.000",
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
              title: Text("SPP Agustus 2022/2023"),
              trailing: Text(
                "Rp 250.000",
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
              title: Text("SPP April 2022/2023"),
              trailing: Text(
                "Rp 250.000",
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
              title: Text("SPP April 2022/2023"),
              trailing: Text(
                "Rp 250.000",
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
              title: Text("SPP Desember 2022/2023"),
              trailing: Text(
                "Rp 250.000",
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
