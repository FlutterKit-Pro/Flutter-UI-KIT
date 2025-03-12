import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color primaryColor;
  final Widget? trailing;
  final VoidCallback? onTap;

  const SettingCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.primaryColor,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: primaryColor),
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          subtitle,
          style: GoogleFonts.poppins(fontSize: 13, color: Colors.grey[600]),
        ),
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}
