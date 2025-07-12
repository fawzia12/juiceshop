import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:juicygo/model/status_model.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key, required this.status, required this.ontap});
  final StatusModel status;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: ontap,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: status.isViewed ? Colors.grey : Colors.blue,
                  width: 3,
                ),
              ),
              child: CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage(status.imageUrl),
              ),
            ),
            const SizedBox(height: 6),
            SizedBox(
              width: 70,
              child: Text(
                status.name,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.adamina(
                  textStyle: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
