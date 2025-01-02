import 'package:flutter/material.dart';

class CardContentSection extends StatelessWidget {
  const CardContentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              height: 150,
              color: Colors.amber,
              margin: const EdgeInsets.only(right: 10),
            ),
            const Column(
              children: [
                Text("Judul"),
                Text("Deskripsi"),
              ],
            ),
          ],
        ),
        // const SpaceW10(),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.red[400],
                size: 25,
              ),
              Icon(
                Icons.star,
                color: Colors.red[400],
                size: 25,
              ),
              Icon(
                Icons.star,
                color: Colors.red[400],
                size: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
