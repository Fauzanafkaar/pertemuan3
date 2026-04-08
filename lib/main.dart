import 'package:flutter/material.dart';
// PERHATIKAN: Ganti 'latihan1' dengan nama folder project kamu jika berbeda
import 'package:latihan_1/ui/produk_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Manajemen Produk',
      debugShowCheckedModeBanner:
          false, // Menghilangkan label debug di pojok kanan
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // Di sini kita panggil class Produkform() agar muncul pertama kali
      home: Produkform(),
    );
  }
}
