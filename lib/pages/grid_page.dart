import 'package:flutter/material.dart';
import 'package:flutter_hello/pages/detail_page.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> data = <String>["Agus", "Budi", "Chalie", "Dodi", "Elsa"];
    List<String> alamat = <String>["batang", "semarang", "pekalongan", "Purwokerto", "majalengka"];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Halman ListView"),
        backgroundColor: Colors.pink,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          ), 
          padding: const EdgeInsets.all(8),
          itemCount: data.length,
          itemBuilder: (context, index){
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    nama: data[index], 
                    urutan: index,
                    alamat: alamat[index],
                    ),
                ),
              );
            },
            child: Container(
              child: Text(data[index]),
              color: Colors.blue,
            ),
          );
        }
        ),
        
    );
  }
}