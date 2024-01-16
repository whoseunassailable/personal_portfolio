import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: Text(AppLocalizations.of(context).helloWorld),
            ),
          ],
        ),
      ),
    );
  }
}
