import 'package:flutter/material.dart';
import 'package:ocean/ui/beranda.dart';
import 'package:ocean/ui/berita.dart';
import 'package:ocean/ui/login.dart';
import 'package:ocean/ui/profil.dart';
import 'package:ocean/ui/registrasi.dart';

MaterialPageRoute _pageRoute(
    {required Widget body, required RouteSettings settings}) =>
    MaterialPageRoute(builder: (_) => body, settings: settings);

Route? generateRoute(RouteSettings settings) {
  Route? _route;
  final _args = settings.arguments;
  switch (settings.name) {
    case rLogin:
      _route = _pageRoute(body: LoginScreen(), settings: settings);
      break;
    case rRegister:
      _route = _pageRoute(body: RegistrasiScreen(), settings: settings);
      break;
    case rHome:
      _route = _pageRoute(body: BerandaScreen(), settings: settings);
      break;
    case rProfile:
      _route = _pageRoute(body: ProfilePage(), settings: settings);
      break;
    case rBerita:
      _route = _pageRoute(body: BeritaScreen(), settings: settings);
      break;
  }
  return _route;
}

const String rLogin = '/login';
const String rRegister = '/register';
const String rHome = '/home';
const String rProfile = '/profile';
const String rBerita = '/berita';

final GlobalKey<NavigatorState> NAV_KEY = GlobalKey<NavigatorState>();
