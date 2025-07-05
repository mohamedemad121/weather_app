import 'package:go_router/go_router.dart';
import 'package:weather_app/presention/views/search_view/search_view.dart';
import 'package:weather_app/splash_view.dart';
abstract class AppRouter{
  static const kSearchview= '/SearchView';
static final router = GoRouter(
  
routes: [
  GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
  ),
   GoRoute(
      path: kSearchview,
      builder: (context, state) => SearchView(),
  ),

]

);


}