import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/browse/page/browse_page.dart';
import 'package:movies_app/features/home/page/home_page.dart';
import 'package:movies_app/features/layout_page/manager/cubit.dart';
import 'package:movies_app/features/layout_page/manager/states.dart';
import 'package:movies_app/features/search/page/search_page.dart';
import 'package:movies_app/features/watch_list/page/watch_list_page.dart';

class LayoutView extends StatefulWidget {
  static String routeName = 'Layout';

  LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(listener: (context, state) {
        if (state is categorySuccessState) {}
      }, builder: (context, state) {
        var cubit = HomeCubit.get(context);

        return Scaffold(
          body: cubit.screans[cubit.currentIndex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.8),
                  spreadRadius: 5,
                  blurRadius: 12,
                  offset: Offset(0, 1), // changes the shadow direction
                ),
              ],
            ),
            child: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                onTap: (index) {
                  cubit.ChangeBottomNavBarIndex(index);
                },
                items: [
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/image/Home_ icon.png')),
                      label: 'HOME'),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/image/search_icon.png')),
                      label: 'SEARCH'),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/image/Browse_icon.png')),
                      label: 'BROWSE'),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/image/whatch_logo.png')),
                      label: 'WATCHLIST'),
                ]),
          ),
        );
      }),
    );
  }
}
