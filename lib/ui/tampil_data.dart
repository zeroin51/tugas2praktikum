import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama; //contoh data yang di-passing
  final String nim;
  final int tahun;
  const TampilData({Key? key, required this.nama,required this.nim, required this.tahun}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Text("Nama saya $nama, NIM $nim, dan umur saya adalah ${DateTime.now().year - tahun} tahun"),
      ),
    );
  }
}