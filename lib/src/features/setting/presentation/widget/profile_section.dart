import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSection extends StatelessWidget {
  final String name;
  final String email;
  final String initials;
  final Color primaryColor;
  final VoidCallback onEditPressed;

  const ProfileSection({
    super.key,
    required this.name,
    required this.email,
    required this.initials,
    required this.primaryColor,
    required this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
              border: Border.all(color: primaryColor, width: 2),
            ),
            child: Center(
              child: Text(
                initials,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  email,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: onEditPressed,
            icon: Icon(Icons.edit, color: primaryColor),
          ),
        ],
      ),
    );
  }
}
