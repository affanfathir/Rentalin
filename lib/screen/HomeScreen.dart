import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/search_bar.dart';
import '../widgets/section_tittle.dart';
import '../widgets/vehicle_card.dart';
import '../models/vehicle.model.dart';
import '../widgets/filter_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F8),
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),

       //  🔥 Tampilkan teks branding langsung tanpa container
            const Text(
              "#RentalinAja",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Cari & Sewa Kendaraan Mudah",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),

            const SizedBox(height: 10),
            
            // Search Bar + Filter Button
            Row(
              children: [
                const Expanded(child: SearchBarWidget()), // Search Bar
                const SizedBox(width: 10),

               //🔥 IconButton dengan background berbentuk kotak rounded
                Container(
                  decoration: BoxDecoration(
                    color: Colors.teal, // Warna background
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                    child: IconButton(
                      icon: const Icon(Icons.filter_list, size: 28, color: Colors.white),
                      onPressed: () {
                        _showFilterSheet(context);
                      },
                    ),
                ),
              ],
            ),

            const SizedBox(height: 24),
            const SectionTitle(title: "Terdekat"),
            const SizedBox(height: 12),

            // List Kendaraan
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: vehicleList.length,
                itemBuilder: (context, index) {
                  final vehicle = vehicleList[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: VehicleCard(
                      imageUrl: vehicle.imagePath,
                      title: vehicle.title,
                      location: vehicle.location,
                      price: vehicle.price,
                      rating: vehicle.rating,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  //  Function untuk menampilkan Filter Bottom Sheet
  void _showFilterSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return const FilterSheet();
      },
    );
  }
}
