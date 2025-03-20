import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text("Akun Saya")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Profil
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFF005F73),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // Avatar
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[400],
                      child: Icon(Icons.person, size: 30, color: Colors.white),
                    ),
                    SizedBox(width: 12),

                    // Nama dan ID
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Muhammad Yusran",
                                style: TextStyle(
                                  fontSize: 19, // Halooo affan kontol
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.emoji_events, color: Colors.amber, size: 18),
                            ],
                          ),
                          Text(
                            "ID : 187231040",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),

                    // Icon Arrow
                    Icon(Icons.chevron_right, color: Colors.white, size: 24),
                  ],
                ),
                SizedBox(height: 12),

                // Progress Bar
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearProgressIndicator(
                      value: 1.0, // Full bar
                      backgroundColor: Colors.white24,
                      color: Colors.lightBlueAccent,
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("100%", style: TextStyle(color: Colors.white)),
                        Text("10/10 data profil terisi", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 8),
                Text(
                  "Profil yang lengkap bisa membantu kami memberikan rekomendasi yang lebih akurat.",
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),

          // Menu
          _buildMenuItem(Icons.history, "Riwayat Transaksi"),
          _buildMenuItem(Icons.help_outline, "Pusat Bantuan"),
          _buildMenuItem(Icons.support_agent, "Customer Service"),

          Spacer(),

          // Tombol Mulai Rental
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF001F3F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.local_car_wash, color: Colors.white),
              label: Text("Mulai Rental", style: TextStyle(color: Colors.white)),
            ),
          ),

          // Versi Aplikasi
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text("Version 0.0.1", style: TextStyle(color: Colors.grey)),
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk Menu
  Widget _buildMenuItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.teal, width: 1.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          leading: Icon(icon, color: Colors.teal),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
          onTap: () {},
        ),
      ),
    );
  }
}
