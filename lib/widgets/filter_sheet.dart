import 'package:flutter/material.dart';

class FilterSheet extends StatefulWidget {
  const FilterSheet({super.key});

  @override
  _FilterSheetState createState() => _FilterSheetState();
}

class _FilterSheetState extends State<FilterSheet> {
  String _selectedVehicleType = "Mobil"; // Default pilihan

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text("Jenis Kendaraan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _selectedVehicleType = "Mobil";
                    });
                  },
                  icon: Icon(
                    Icons.directions_car,
                    color: _selectedVehicleType == "Mobil" ? Colors.white : Colors.black, // Ikon berubah warna
                  ),
                  label: Text(
                    "Mobil",
                    style: TextStyle(
                      color: _selectedVehicleType == "Mobil" ? Colors.white : Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedVehicleType == "Mobil" ? Colors.blue.shade900 : Colors.white,
                    foregroundColor: _selectedVehicleType == "Mobil" ? Colors.white : Colors.black,
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
              ),

              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _selectedVehicleType = "Motor";
                    });
                  },
                  icon: Icon(
                    Icons.motorcycle,
                    color: _selectedVehicleType == "Motor" ? Colors.white : Colors.black, // Ikon berubah warna
                  ),
                  label: Text(
                    "Motor",
                    style: TextStyle(
                      color: _selectedVehicleType == "Motor" ? Colors.white : Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedVehicleType == "Motor" ? Colors.blue.shade900 : Colors.white,
                    foregroundColor: _selectedVehicleType == "Motor" ? Colors.white : Colors.black,
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
              ),

            ],
          ),
          const SizedBox(height: 16),
          Text("Jarak", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: "MAKS",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
          const SizedBox(height: 16),
          Text("Harga", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "MIN",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "MAKS",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Terapkan Filter"),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}