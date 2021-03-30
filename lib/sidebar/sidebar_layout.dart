import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../pages/pages.dart';
import 'sidebar.dart';

class SidebarLayout extends StatefulWidget {
  @override
  _SidebarLayoutState createState() => _SidebarLayoutState();
}

class _SidebarLayoutState extends State<SidebarLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(HomePage()),
        child: Stack(
          children: [
            BlocBuilder<NavigationBloc, NavigationStates>(
                builder: (context, navigationState) {
              return navigationState as Widget;
            }),
            Sidebar(),
          ],
        ),
      ),
    );
  }
}
