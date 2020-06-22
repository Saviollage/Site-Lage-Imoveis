import 'package:flutter/material.dart';
import 'package:site_lage/pages/aboutUsPage.dart';
import 'package:site_lage/pages/contactPage.dart';
import 'package:site_lage/pages/homePage.dart';
import 'package:site_lage/pages/properiesPage.dart';
import 'package:site_lage/pages/propertyPage.dart';
import 'package:site_lage/pages/simulationPage.dart';

class Path {
  const Path(this.pattern, this.builder);

  /// A RegEx string for route matching.
  final String pattern;

  /// The builder for the associated pattern route. The first argument is the
  /// [BuildContext] and the second argument is a RegEx match if it is
  /// included inside of the pattern.
  final Widget Function(BuildContext, String) builder;
}

class RouteConfiguration {
  /// List of [Path] to for route matching. When a named route is pushed with
  /// [Navigator.pushNamed], the route name is matched with the [Path.pattern]
  /// in the list below. As soon as there is a match, the associated builder
  /// will be returned. This means that the paths higher up in the list will
  /// take priority.
  static List<Path> paths = [
    Path(
      r'^' + HomePage.route,
      (context, match) => HomePage(),
    ),
    Path(
      r'^' + ContactPage.route,
      (context, match) => ContactPage(),
    ),
    Path(
      r'^' + AboutUsPage.route,
      (context, match) => AboutUsPage(),
    ),
    Path(
      r'^' + SimulationPage.route,
      (context, match) => SimulationPage(),
    ),
    Path(
      r'^' + PropertiesPage.route,
      (context, match) => PropertiesPage(),
    ),
    Path(
      r'^/property/([\w-]+)$',
      (context, match) => PropertyPage(
        id: match,
      ),
    )
  ];

  /// The route generator callback used when the app is navigated to a named
  /// route. Set it on the [MaterialApp.onGenerateRoute] or
  /// [WidgetsApp.onGenerateRoute] to make use of the [paths] for route
  /// matching.
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    for (Path path in paths) {
      final regExpPattern = RegExp(path.pattern);
      if (regExpPattern.hasMatch(settings.name)) {
        final firstMatch = regExpPattern.firstMatch(settings.name);
        final match = (firstMatch.groupCount == 1) ? firstMatch.group(1) : null;
        // return MaterialPageRoute<void>(
        //   builder: (context) => path.builder(context, match),
        //   settings: settings,
        // );
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) =>
              path.builder(context, match),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      }
    }

    // If no match was found, we let [WidgetsApp.onUnknownRoute] handle it.
    return null;
  }
}
