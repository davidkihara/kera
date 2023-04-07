import 'package:flutter/material.dart';
import 'package:kera/utils/app_colors.dart';
import 'package:settings_ui/settings_ui.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightPrimary,
      appBar: AppBar(
        title: const Text(
          "Settings",
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.delete,
          //     color: Colors.red,
          //   ),
          // ),
        ],
        backgroundColor: AppColors.lightPrimary,
        foregroundColor: AppColors.darkPrimary,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text('Language'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.language),
                title: const Text('Language'),
                value: const Text('English'),
              ),
            ],
          ),
          SettingsSection(
            title: const Text('Preferences'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.language),
                title: const Text('Specials'),
                value: const Text('Dinner, Lunch, Breakfast, Desert'),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.language),
                title: const Text('Cuisines'),
                value: const Text('Italian, Spanish, French'),
              ),
            ],
          ),
          SettingsSection(
            title: const Text('Theme'),
            tiles: <SettingsTile>[
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: false,
                leading: const Icon(Icons.dark_mode),
                title: const Text('Dark mode'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
