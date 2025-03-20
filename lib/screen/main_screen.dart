import 'package:flutter/material.dart';
import 'ChatScreen.dart'; // Import Chat List
import 'HomeScreen.dart'; // Import Home
import 'OrdersScreen.dart';
import 'AccountScreen.dart';

class MainScreen extends StatefulWidget {
  final int initialIndex;
  const MainScreen({super.key, this.initialIndex = 0});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  final List<Widget> _screens = [
    HomeScreen(),        // Halaman utama
    OrdersScreen(),      // Halaman pesanan
    ChatListScreen(),    // Halaman chat
    AccountScreen(),     // Halaman profil (gantilah dengan halaman akun)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Menampilkan layar sesuai indeks
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Cari"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Pesanan"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Akun"),
        ],
      ),
    );
  }
}
