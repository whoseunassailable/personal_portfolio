import 'package:flutter/material.dart';
import 'package:personal_portfolio/l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(AppLocalizations.of(context).helloWorld),
    );
  }
}
