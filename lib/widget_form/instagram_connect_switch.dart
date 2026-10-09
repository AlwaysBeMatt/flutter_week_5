import 'package:flutter/material.dart';

class InstagramConnectSwitch extends StatefulWidget {
  const InstagramConnectSwitch({super.key});

  @override
  State<InstagramConnectSwitch> createState() =>
      _InstagramConnectSwitchState();
}

class _InstagramConnectSwitchState extends State<InstagramConnectSwitch> {
  // isOn menyimpan kondisi Switch: true = menyala, false = mati.
  // Nilai awal false, jadi Switch mati saat halaman dibuka.
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instagram Connect Switch Example')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Connect Instagram'),
            const SizedBox(width: 8),
            Switch(
              // value menentukan posisi Switch (on/off) sesuai isi isOn.
              value: isOn,
              onChanged: (bool val) {
                setState(() {
                  // val = nilai baru saat Switch digeser. Disimpan ke isOn di
                  // dalam setState() agar tampilan diperbarui.
                  isOn = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
