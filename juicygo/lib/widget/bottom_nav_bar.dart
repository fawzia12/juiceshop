import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Bottom navigation background
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onTap,
            backgroundColor: const Color(0xFFFF8FA3),
            elevation: 20,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            selectedFontSize: 14,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded, size: 28),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart, size: 28),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SizedBox.shrink(), // Empty space for center button
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard, size: 28),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded, size: 28),
                label: '',
              ),
            ],
          ),
        ),

        // Floating Center '+' Button
        Positioned(
          bottom: 20, // how far it pops up
          child: GestureDetector(
            onTap: () => onTap,// you can change this behavior
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(Icons.add, color: Color(0xFFFF8FA3), size: 32),
            ),
          ),
        ),
      ],
    );
  }
}
