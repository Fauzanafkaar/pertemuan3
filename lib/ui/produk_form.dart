import 'package:flutter/material.dart';
import 'package:latihan_1/ui/produk_detail.dart'; // Sesuaikan 'latihan1' dengan nama project Anda

class Produkform extends StatefulWidget {
  @override
  _Produkformstate createState() => _Produkformstate();
}

class _Produkformstate extends State<Produkform> {
  // 1. Deklarasi Controller untuk menangkap teks input
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Produk')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxkodeProduk(),
            _textboxnamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  // 2. Fungsi Widget Input
  _textboxkodeProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukTextboxController,
    );
  }

  _textboxnamaProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController,
    );
  }

  _textboxHargaProduk() {
    return TextField(
      decoration: InputDecoration(labelText: "Harga Produk"),
      controller: _hargaProdukTextboxController,
    );
  }

  // 3. Fungsi Tombol Simpan & Navigasi
  _tombolSimpan() {
    return ElevatedButton(
      child: Text('Simpan'),
      onPressed: () {
        String kode = _kodeProdukTextboxController.text;
        String nama = _namaProdukTextboxController.text;
        int harga = int.parse(_hargaProdukTextboxController.text);

        // Pindah ke halaman Detail dan kirim data
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                ProdukDetail(kodeProduk: kode, namaProduk: nama, harga: harga),
          ),
        );
      },
    );
  }
}
