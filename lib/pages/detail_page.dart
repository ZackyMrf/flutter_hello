import 'package:flutter/material.dart';
import 'package:flutter_hello/widget/spacing.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

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
          ],
        ),
      ),
    );
  }
}