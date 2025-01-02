import 'package:flutter/material.dart';
import 'package:flutter_hello/pages/grid_page.dart';
import 'package:flutter_hello/pages/list_page.dart';
import 'package:flutter_hello/widget/spacing.dart';

class ListGridPage extends StatelessWidget {
  const ListGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView & GridView"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ListPage(),
                  )
                );
             },
             child: const Text("Ke Halaman ListView"),
             ),
             const SpaceH10(),
             ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => GridPage(),
                  )
                );
             },
             child: const Text("Ke Halaman ListView"),
             ),
        ],
      ),
    );
  }
}