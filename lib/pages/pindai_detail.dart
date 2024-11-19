import 'package:flutter/material.dart';

class PindaiDetail extends StatelessWidget {
  const PindaiDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pindai QR Code'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        elevation: 0,  // Removed shadow for a cleaner look
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade700, Colors.blue.shade400],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 15,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Icon(
                    Icons.qr_code_scanner,
                    size: 130,
                    color: Colors.blue.shade700,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Arahkan kamera ke QR Code',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Pastikan QR Code terlihat jelas dan terfokus untuk mendapatkan hasil yang terbaik.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Mulai pemindaian...')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Updated parameter
                  foregroundColor: Colors.blueAccent, // Updated parameter
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('Mulai Pemindaian'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
