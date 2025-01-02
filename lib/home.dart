import 'package:flutter/material.dart';
import 'package:flutter_hello/interaction_page.dart';
import 'package:flutter_hello/list_grid_page.dart';
import 'package:flutter_hello/widget/content.dart';
import 'widget/spacing.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Hello",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 25, bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RowWidget(),
            const SpaceH10(),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.orange,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.indigo,
                )
              ],
            ),
            const SpaceH10(),
            const CardContentSection(),
            const SpaceH10(),
            const CardContentSection(),
            const SpaceH10(),
             ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const InteractionPage(),
                  )
                );
             },
             child: const Text("HALAMAN INTERAKSI PUSH"),
             ),
             const SpaceH10(),
             ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ListGridPage(),
                  )
                );
             },
             child: const Text("HALAMAN LIST"),
             )
          ],
        ),
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          color: Colors.green,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.yellow,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.blue,
        )
      ],
    );
  }
}
