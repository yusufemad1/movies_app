import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/layout_page/manager/states.dart';

import '../../browse/page/browse_page.dart';
import '../../home/page/home_page.dart';
import '../../search/page/search_page.dart';
import '../../watch_list/page/watch_list_page.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeLoadingState());

  static HomeCubit get(Context) => BlocProvider.of(Context);
  List screans = [
    HomePage(),
    SearchPage(),
    BrowsePage(),
    WatchListPage(),
  ];
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  ChangeBottomNavBarIndex(int v) {
    _currentIndex = v;
    emit(ChangeCurrentBottomNavBarIndex());
  }
}
