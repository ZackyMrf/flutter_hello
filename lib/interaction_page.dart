import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_hello/widget/spacing.dart';

class InteractionPage extends StatelessWidget {
  const InteractionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HALAMAN INTERAKSI"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          const SpaceH10(),
          OutlinedButton(
            onPressed: () {
              final SnackBar tampil = SnackBar(
                content: const Text("INI DATA DI SNACKBAR"),
                action: SnackBarAction(
                  label: "TUTUP",
                  onPressed: () {},
                ),
                duration: const Duration(seconds: 3),
              );
              ScaffoldMessenger.of(context).showSnackBar(tampil);
            },
            child: const Text("KLIK SNACKBAR"),
          ),
          const SpaceH10(),
          OutlinedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text("Title Dialog"),
                  content: const Text("Isi Konten Dialog"),
                  actions: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("OK"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("CANCEL"),
                    )
                  ],
                ),
              );
            },
            child: const Text("Klik Dialog"),
          ),
          const SpaceH10(),
          OutlinedButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: "Ini Adalah Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                backgroundColor: Colors.grey,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },
            child: const Text("Klik Toast"),
          ),
        ],
      ),
    );
  }
}
