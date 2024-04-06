import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movies_app/features/browse/page/browse_page.dart';
import 'package:movies_app/features/layout_page/page/layout_page.dart';
import 'package:movies_app/features/search/page/search_page.dart';
import 'package:movies_app/features/watch_list/page/watch_list_page.dart';
import 'package:movies_app/features/watch_list/widgets/boxes.dart';
import 'core/config/application_theme_manager.dart';
import 'features/home/page/home_page.dart';
import 'features/home/page/movie_details.dart';
import 'features/splash/splach_screen.dart';
import 'features/watch_list/widgets/db.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(dbAdapter());
  boxDb = await Hive.openBox<db>('dbBox');
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ApplicationThemeManager.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routsName,
      routes: {
        SplashView.routsName: (context) => SplashView(),
        HomePage.routeName: (context) => HomePage(),
        SearchPage.routeName: (context) => SearchPage(),
        WatchListPage.routeName: (context) => WatchListPage(),
        BrowsePage.routeName: (context) => BrowsePage(),
        LayoutView.routeName: (context) => LayoutView(),
      },
    );
  }
}
