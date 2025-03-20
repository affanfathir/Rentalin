import 'package:flutter/material.dart';

class VehicleFilter extends StatefulWidget {
  @override
  _VehicleFilterState createState() => _VehicleFilterState();
}

class _VehicleFilterState extends State<VehicleFilter> {
  bool isCarSelected = true; // Default pilihan mobil

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Tombol Mobil
        GestureDetector(
          onTap: () {
            setState(() {
              isCarSelected = true;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: isCarSelected ? Colors.blue : Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blue),
            ),
            child: Row(
              children: [
                Icon(Icons.directions_car,
                    color: isCarSelected ? Colors.white : Colors.blue),
                const SizedBox(width: 8),
                Text(
                  "Mobil",
                  style: TextStyle(
                    color: isCarSelected ? Colors.white : Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12),

        // Tombol Motor
        GestureDetector(
          onTap: () {
            setState(() {
              isCarSelected = false;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: !isCarSelected ? Colors.blue : Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.blue),
            ),
            child: Row(
              children: [
                Icon(Icons.motorcycle,
                    color: !isCarSelected ? Colors.white : Colors.blue),
                const SizedBox(width: 8),
                Text(
                  "Motor",
                  style: TextStyle(
                    color: !isCarSelected ? Colors.white : Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
