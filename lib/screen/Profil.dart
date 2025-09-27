import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --- PERUBAHAN DI SINI ---
      // Menambahkan AppBar akan secara otomatis membuat tombol kembali
      appBar: AppBar(
        title: Text("Profil"),
        // Anda bisa sesuaikan warna dan style lainnya di sini jika perlu
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
      ),
      // -------------------------
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Pusatkan konten secara vertikal
            crossAxisAlignment:
                CrossAxisAlignment.center, // Pusatkan konten secara horizontal
            children: <Widget>[
              // Widget untuk menampilkan foto profil
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.grey[200],
                // Pastikan nama file gambar sesuai dengan yang Anda masukkan di assets
                backgroundImage: AssetImage('assets/images/zada.jpg'),
              ),
              SizedBox(height: 30),

              // Widget untuk menampilkan data diri
              _buildProfileInfo(
                icon: Icons.person,
                label: 'Nama',
                value: 'zada wirayuda sugiarto',
              ),
              SizedBox(height: 16),
              _buildProfileInfo(
                icon: Icons.badge,
                label: 'NIM',
                value: '124230146',
              ),
              SizedBox(height: 16),
              _buildProfileInfo(
                icon: Icons.cake,
                label: 'Tempat, Tanggal Lahir',
                value: 'Yogyakarta, 28 desember 2004',
              ),
              SizedBox(height: 16),
              _buildProfileInfo(
                icon: Icons.favorite,
                label: 'Hobi',
                value: 'makan',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget helper untuk membuat baris informasi yang seragam
  Widget _buildProfileInfo({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.grey[600]),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              value,
              style: TextStyle(fontSize: 16, color: Colors.grey[800]),
            ),
          ],
        ),
      ],
    );
  }
}
