import 'package:flutter/material.dart';
import 'package:flutter_kit_pro/src/features/setting/presentation/widget/langue_option.dart';
import 'package:flutter_kit_pro/src/features/setting/presentation/widget/logout_button.dart';
import 'package:flutter_kit_pro/src/features/setting/presentation/widget/profile_section.dart';
import 'package:flutter_kit_pro/src/features/setting/presentation/widget/section_title.dart';
import 'package:flutter_kit_pro/src/features/setting/presentation/widget/setting_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toastification/toastification.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({super.key});

  @override
  ConsumerState<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends ConsumerState<SettingScreen> {
  final Color _primaryColor = const Color(0xFF0068B5);
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  bool _biometricEnabled = false;
  String _selectedLanguage = 'Français';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        title: Text(
          'Paramètres',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileSection(
                  name: 'Oumar Fall',
                  email: 'oumar.fall@example.com',
                  initials: 'OF',
                  primaryColor: _primaryColor,
                  onEditPressed: () => _showToast('Éditer le profil'),
                ),
                const SizedBox(height: 24),
                SectionTitle(title: 'Préférences', primaryColor: _primaryColor),
                SettingCard(
                  title: 'Notifications',
                  subtitle: 'Recevoir des notifications de l\'application',
                  icon: Icons.notifications_outlined,
                  primaryColor: _primaryColor,
                  trailing: Switch(
                    value: _notificationsEnabled,
                    activeColor: _primaryColor,
                    onChanged: (value) {
                      setState(() {
                        _notificationsEnabled = value;
                      });
                      _showToast(
                        'Notifications ${value ? 'activées' : 'désactivées'}',
                      );
                    },
                  ),
                ),
                SettingCard(
                  title: 'Mode sombre',
                  subtitle: 'Changer l\'apparence de l\'application',
                  icon: Icons.dark_mode_outlined,
                  primaryColor: _primaryColor,
                  trailing: Switch(
                    value: _darkModeEnabled,
                    activeColor: _primaryColor,
                    onChanged: (value) {
                      setState(() {
                        _darkModeEnabled = value;
                      });
                      _showToast(
                        'Mode sombre ${value ? 'activé' : 'désactivé'}',
                      );
                    },
                  ),
                ),
                SettingCard(
                  title: 'Langue',
                  subtitle: 'Changer la langue de l\'application',
                  icon: Icons.language_outlined,
                  primaryColor: _primaryColor,
                  onTap: _showLanguageDialog,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _selectedLanguage,
                        style: GoogleFonts.poppins(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                SectionTitle(title: 'Sécurité', primaryColor: _primaryColor),
                SettingCard(
                  title: 'Authentification biométrique',
                  subtitle: 'Se connecter avec empreinte digitale ou Face ID',
                  icon: Icons.fingerprint,
                  primaryColor: _primaryColor,
                  trailing: Switch(
                    value: _biometricEnabled,
                    activeColor: _primaryColor,
                    onChanged: (value) {
                      setState(() {
                        _biometricEnabled = value;
                      });
                      _showToast(
                        'Authentification biométrique ${value ? 'activée' : 'désactivée'}',
                      );
                    },
                  ),
                ),
                SettingCard(
                  title: 'Changer le code PIN',
                  subtitle: 'Modifier votre code d\'accès',
                  icon: Icons.lock_outline,
                  primaryColor: _primaryColor,
                  onTap: () {
                    _showToast('Fonctionnalité à venir');
                  },
                ),
                const SizedBox(height: 24),
                SectionTitle(title: 'À propos', primaryColor: _primaryColor),
                SettingCard(
                  title: 'Conditions générales',
                  subtitle: 'Lire les conditions d\'utilisation',
                  icon: Icons.description_outlined,
                  primaryColor: _primaryColor,
                  onTap: () {
                    _showToast('Fonctionnalité à venir');
                  },
                ),
                SettingCard(
                  title: 'Politique de confidentialité',
                  subtitle: 'Comment nous utilisons vos données',
                  icon: Icons.privacy_tip_outlined,
                  primaryColor: _primaryColor,
                  onTap: () {
                    _showToast('Fonctionnalité à venir');
                  },
                ),
                SettingCard(
                  title: 'Version de l\'application',
                  subtitle: 'v1.0.0',
                  icon: Icons.info_outline,
                  primaryColor: _primaryColor,
                ),
                const SizedBox(height: 24),
                LogoutButton(
                  onPressed: () {
                    _showToast('Déconnexion en cours...');
                  },
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(
              'Choisir une langue',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LanguageOption(
                  language: 'Français',
                  selectedLanguage: _selectedLanguage,
                  primaryColor: _primaryColor,
                  onTap: () => _selectLanguage('Français'),
                ),
                LanguageOption(
                  language: 'English',
                  selectedLanguage: _selectedLanguage,
                  primaryColor: _primaryColor,
                  onTap: () => _selectLanguage('English'),
                ),
                LanguageOption(
                  language: 'Wolof',
                  selectedLanguage: _selectedLanguage,
                  primaryColor: _primaryColor,
                  onTap: () => _selectLanguage('Wolof'),
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
    );
  }

  void _selectLanguage(String language) {
    setState(() {
      _selectedLanguage = language;
    });
    Navigator.pop(context);
    _showToast('Langue changée en $language');
  }

  void _showToast(String message) {
    toastification.show(
      context: context,
      type: ToastificationType.info,
      style: ToastificationStyle.fillColored,
      title: Text(
        message,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      autoCloseDuration: const Duration(seconds: 3),
    );
  }
}









