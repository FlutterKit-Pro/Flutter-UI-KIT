import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageOption extends StatelessWidget {
  final String language;
  final String selectedLanguage;
  final Color primaryColor;
  final VoidCallback onTap;

  const LanguageOption({
    super.key,
    required this.language,
    required this.selectedLanguage,
    required this.primaryColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(language, style: GoogleFonts.poppins()),
      trailing:
          selectedLanguage == language
              ? Icon(Icons.check, color: primaryColor)
              : null,
      onTap: onTap,
    );
  }
}