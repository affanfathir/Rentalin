import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  String selectedStatus = "Semua Status";

  final List<Map<String, dynamic>> orders = [
    {
      'category': 'Motor',
      'date': '17 Agustus 2025',
      'status': 'Belum Bayar',
      'image': 'images/motor1.jpg',
      'name': 'Ducati Superleggera 1300cc',
      'rental': 'Iqbal Rental',
      'price': 'Rp550.000'
    },
    {
      'category': 'Motor',
      'date': '17 Agustus 2025',
      'status': 'Selesai',
      'image': 'images/motor1.jpg',
      'name': 'Ducati Superleggera 1300cc',
      'rental': 'Iqbal Rental',
      'price': 'Rp550.000'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F8),
      appBar: AppBar(title: Text("Pesanan Saya")),
      body: Column(
        children: [
          // Dropdown Filter
          Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.centerRight,
              child: DropdownButton<String>(
                value: selectedStatus,
                onChanged: (newValue) {
                  setState(() {
                    selectedStatus = newValue!;
                  });
                },
                items: ["Semua Status", "Belum Bayar", "Selesai"]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),

          // List Orders
          Expanded(
            child: ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];

                // Filter berdasarkan status
                if (selectedStatus != "Semua Status" &&
                    order['status'] != selectedStatus) {
                  return SizedBox();
                }

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Kategori dan Tanggal
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.motorcycle, size: 20),
                                  SizedBox(width: 5),
                                  Text(order['category'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Text(order['date'],
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                          SizedBox(height: 5),

                          // Status Pesanan
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                color: order['status'] == "Belum Bayar"
                                    ? Colors.blue
                                    : Colors.green,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                order['status'],
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),

                          // Gambar & Info Rental
                          Row(
                            children: [
                              // Gambar Motor
                              Container(
                                width: 70,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(order['image']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),

                              // Detail Rental
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(order['name'],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                  Text(order['rental'],
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),

                          // Harga
                          Text("Total Harga",
                              style: TextStyle(color: Colors.grey)),
                          Text(order['price'],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),

                          // Tombol Aksi
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (order['status'] == "Selesai")
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF001F3F), // Latar biru
                                    foregroundColor: Colors.white, // Teks putih
                                    side: BorderSide(color: Colors.white), // Border putih
                                  ),
                                  onPressed: () {},
                                  child: Text("Ulas"),
                                ),
                              SizedBox(width: 5),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white, // Latar putih
                                  foregroundColor: Colors.teal, // Teks hijau (teal)
                                  side: BorderSide(color: Colors.teal), // Border hijau (teal)
                                ),
                                onPressed: () {},
                                child: Text("Rental Lagi"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}