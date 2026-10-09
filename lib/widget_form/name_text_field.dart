import 'package:flutter/material.dart';

class NameTextField extends StatefulWidget {
  const NameTextField({super.key});

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    // dispose() dipanggil saat halaman ditutup. Controller dilepas di sini
    // agar memorinya dibebaskan (tidak memory leak).
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _controller,
          maxLength: 20, // Batas maksimal karakter input
          decoration: const InputDecoration(
            labelText: 'Name',
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey, // Warna underline blueGrey
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                // focusedBorder = garis bawah saat TextField sedang diklik/diisi.
                // Diberi warna blueGrey agar tetap sama dengan saat tidak fokus.
                color: Colors.blueGrey,
              ),
            ),
          ),
          onChanged: (text) {
            // onChanged dipanggil setiap isi TextField berubah. `text` berisi
            // teks terbaru, lalu dicetak ke Debug Console lewat debugPrint.
            debugPrint('Text changed: $text');
          },
        ),
      ),
    );
  }
}
