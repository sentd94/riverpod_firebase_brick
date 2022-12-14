import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/generated/l10n.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/theme.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/features/front_page/presentation/front_page_widget.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/settings/domain/settings_controller.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/services/settings/presentation/settings_view.dart';

/// The Widget that configures your application.
class App extends StatelessWidget {
  const App({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          //hide debug banner
          debugShowCheckedModeBanner: false,

          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',

          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          supportedLocales: S.delegate.supportedLocales,
          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          onGenerateTitle: (BuildContext context) => S.of(context).appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: settingsController.themeMode,

          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsView.routeName:
                    return SettingsView();
                  case FrontPageWidget.routeName:

                  default:
                    return FrontPageWidget();
                }
              },
            );
          },
        );
      },
    );
  }
}
