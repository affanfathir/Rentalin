class Vehicle {
  final String imagePath; // Menggunakan path lokal
  final String title;
  final String location;
  final String price;
  final String rating;

  Vehicle({
    required this.imagePath,
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
  });
}

// Gunakan gambar dari `assets/images/`
List<Vehicle> vehicleList = [
  Vehicle(
    imagePath: "images/motor1.jpg", // Ganti URL dengan path lokal
    title: "Iqbal Rental, Mulyorejo",
    location: "Dekat UNAIR C",
    price: "Rp75.000/hari",
    rating: "4,7",
  ),
  Vehicle(
    imagePath: "images/motor2.jpg",
    title: "Super Rental, Mulyorejo",
    location: "Dekat Tunjungan Plaza",
    price: "Rp75.000/hari",
    rating: "3,3",
  ),
    Vehicle(
    imagePath: "C:\UNAIR\Semester 4\PMOB PRAK\rentalinaja\rentalinaja\images\motor2.jpg",
    title: "Super Rental, Mulyorejo",
    location: "Dekat Tunjungan Plaza",
    price: "Rp75.000/hari",
    rating: "3,3",
  ),
    Vehicle(
    imagePath: "C:\UNAIR\Semester 4\PMOB PRAK\rentalinaja\rentalinaja\images\motor2.jpg",
    title: "Super Rental, Mulyorejo",
    location: "Dekat Tunjungan Plaza",
    price: "Rp75.000/hari",
    rating: "3,3",
  ),
    Vehicle(
    imagePath: "C:\UNAIR\Semester 4\PMOB PRAK\rentalinaja\rentalinaja\images\motor2.jpg",
    title: "Super Rental, Mulyorejo",
    location: "Dekat Tunjungan Plaza",
    price: "Rp75.000/hari",
    rating: "3,3",
  ),
    Vehicle(
    imagePath: "C:\UNAIR\Semester 4\PMOB PRAK\rentalinaja\rentalinaja\images\motor2.jpg",
    title: "Super Rental, Mulyorejo",
    location: "Dekat Tunjungan Plaza",
    price: "Rp75.000/hari",
    rating: "3,3",
  ),
];
