import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// **Vehicle Card**
class VehicleCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String location;
  final String price;
  final String rating;

  const VehicleCard({
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
    super.key,
  });

  @override
  _VehicleCardState createState() => _VehicleCardState();
}

class _VehicleCardState extends State<VehicleCard> {
  bool isFavorite = false; // Menyimpan status favorite

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  widget.imageUrl,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    widget.price,
                    style: GoogleFonts.sora(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite; // Toggle status favorite
                    });
                  },
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border, // Ubah ikon
                    color: Colors.black, // Warna tetap putih
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            widget.title,
            style: GoogleFonts.sora(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.location,
            style: GoogleFonts.sora(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 16),
              const SizedBox(width: 4),
              Text(
                widget.rating,
                style: GoogleFonts.sora(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
