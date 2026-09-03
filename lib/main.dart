import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tiered Pricing Card',
      home: const PricingPage(),
    );
  }
}

class PricingPage extends StatelessWidget {
  const PricingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Layanan IT'),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),

          // Stack digunakan sebagai kerangka utama
          child: Stack(
            children: [
              // Isi utama kartu
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Icon layanan
                  const Icon(Icons.laptop_mac, size: 60, color: Colors.blue),

                  const SizedBox(height: 10),

                  // Nama paket
                  const Text(
                    'Paket Profesional',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 5),

                  // Deskripsi
                  const Text(
                    'Solusi IT profesional untuk kebutuhan bisnis Anda.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),

                  const SizedBox(height: 20),

                  // Harga dan durasi
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text(
                        'Rp 5.000.000',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '/ proyek',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Daftar fitur
                  Column(
                    children: const [
                      Row(
                        children: [
                          Icon(Icons.check, color: Colors.green, size: 20),
                          SizedBox(width: 8),
                          Text('Desain UI/UX Khusus'),
                        ],
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: [
                          Icon(Icons.check, color: Colors.green, size: 20),
                          SizedBox(width: 8),
                          Text('Setup Database'),
                        ],
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: [
                          Icon(Icons.check, color: Colors.green, size: 20),
                          SizedBox(width: 8),
                          Text('Dukungan Teknis'),
                        ],
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: [
                          Icon(Icons.check, color: Colors.green, size: 20),
                          SizedBox(width: 8),
                          Text('Maintenance Sistem'),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // Tombol
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Aksi ketika tombol ditekan
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Pilih Paket',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Badge menggunakan Positioned
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Rekomendasi',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
