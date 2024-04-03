import 'package:flutter/material.dart';
import 'package:movies_app/features/browse/page/browse_page.dart';
import 'package:movies_app/features/layout_page/page/layout_page.dart';
import 'package:movies_app/features/search/page/search_page.dart';
import 'package:movies_app/features/watch_list/page/watch_list_page.dart';
import 'core/config/application_theme_manager.dart';
import 'features/home/page/home_page.dart';
import 'features/home/page/movie_details.dart';
import 'features/splash/splach_screen.dart';

void main(){
  runApp(
    const MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ApplicationThemeManager.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routsName,
      routes: {
        SplashView.routsName:(context) => SplashView(),
        HomePage.routeName:(context) => HomePage(),
        SearchPage.routeName:(context) => SearchPage(),
        WatchListPage.routeName:(context) => WatchListPage(),
        BrowsePage.routeName:(context) => BrowsePage(),
        LayoutView.routeName:(context) => LayoutView(),
        // MovieDetails.routeNmae:(context) => MovieDetails(),

      },
    );
  }
}