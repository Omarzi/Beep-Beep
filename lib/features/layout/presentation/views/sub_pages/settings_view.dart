import 'package:beep_beep/features/layout/presentation/views/sub_pages/widgets/settings_view_body.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SettingsViewBody(),
    );
  }
}
