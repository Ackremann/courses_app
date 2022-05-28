import 'package:courses_app/features/home/view.dart';
import 'package:courses_app/features/profile/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../const/data/enums.dart';
import '../../const/resources/values_manager.dart';
import 'cubit/navigation_cubit.dart';
part 'units/bottom_nav.dart';
part 'units/drawer.dart';

class BaseView extends StatefulWidget {
  const BaseView({Key? key}) : super(key: key);

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const AppDrawer(),
      bottomNavigationBar: const _BottomNav(),
      body: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          if (state.navbarItem == NavbarItem.home) {
            return const HomeView();
          } else if (state.navbarItem == NavbarItem.settings) {
            return const ProfileView();
          } else if (state.navbarItem == NavbarItem.profile) {
            return const HomeView();
          }
          return Container();
        },
      ),
    );
  }
}
