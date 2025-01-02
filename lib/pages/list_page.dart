import 'package:flutter/material.dart';
import 'package:flutter_hello/pages/detail_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> data = <String>["Agus", "Budi", "Chalie", "Dodi", "Elsa"];
    List<String> alamat = <String>["batang", "semarang", "pekalongan", "Purwokerto", "majalengka"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman ListView"),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index){
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                  nama: data[index], 
                  urutan: index,
                  alamat: alamat[index],),
                ),
              );
            },
            child: Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Text(data[index]),
                subtitle: Text("alamatnya ada di ${alamat[index]}"),
                trailing: const Icon(Icons.more_vert),
              ),
            ),
          );
        },
      ),
    );
  }
}