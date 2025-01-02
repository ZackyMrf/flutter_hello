import 'package:flutter/material.dart';
import 'package:flutter_hello/widget/spacing.dart';

class DetailPage extends StatelessWidget {
  DetailPage({
    super.key,
    required this.nama,
    required this.urutan,
    required this.alamat,});

  int urutan;
  String nama;
  String alamat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: const Text("Detail Data"),
      ),
      body: Center(
        child: Column(
          children: [
            const SpaceH10(),
            const Text("Informasi Data"),
            const SpaceH10(),
            Text("Nama : $nama"),
            Text("Urutan ke : ${urutan+1}"),
            Text("alamat : $alamat"),
            const SpaceH10(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Kembali"),
            ),

          ],
        ),
      ),
    );
  }
}