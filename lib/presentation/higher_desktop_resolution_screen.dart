import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

class HigherResolutionScreen extends StatelessWidget {
  const HigherResolutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppLocalizations.of(context).helloWorld),
      ),
    );
  }
}
