import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:terms/src/app/router/router.dart';
import 'package:terms/src/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter().router;
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      debugShowCheckedModeBanner: false,
      locale: WidgetsBinding.instance.window.locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
