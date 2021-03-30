import 'dart:async';

import 'package:assignment/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:assignment/sidebar/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar>
    with SingleTickerProviderStateMixin<Sidebar> {
  AnimationController _animationController;
  StreamController<bool> isSidebarOpernedStreamController;
  Stream<bool> isSidebarOpenedStream;
  StreamSink<bool> isSidebarOpenedSink;

  // final bool isSidebarOpened = false;
  final _animationDuration = Duration(milliseconds: 500);

  @override
  // ignore: must_call_super
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpernedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpernedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpernedStreamController.sink;
  }

  @override
  // ignore: must_call_super
  Future<void> dispose() async {
    _animationController.dispose();
    isSidebarOpernedStreamController.close();
    isSidebarOpenedSink.close();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;
    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      FocusScope.of(context).requestFocus(new FocusNode());
      _animationController.reverse();
    } else {
      isSidebarOpenedSink.add(true);
      FocusScope.of(context).requestFocus(new FocusNode());
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return StreamBuilder<bool>(
      initialData: false,
      stream: isSidebarOpenedStream,
      builder: (context, isSidebarOpenedAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isSidebarOpenedAsync.data ? 0 : -width,
          right: isSidebarOpenedAsync.data ? 0 : width - 45,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Color(0xff47596E),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: height * 0.07,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          child: Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          radius: 30,
                        ),
                        title: Text(
                          "Dastan",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w300),
                        ),
                        subtitle: Text(
                          "padmapanipatra@gmail.com",
                          style: TextStyle(
                              color: Color(0xff1BB5FD),
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Divider(
                        height: 64,
                        thickness: 0.5,
                        color: Colors.white,
                        indent: 32,
                        endIndent: 32,
                      ),
                      MenuItem(
                        icon: Icons.home_outlined,
                        title: "Home",
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvents.HomePageClickedEvent);
                        },
                      ),
                      MenuItem(
                        icon: Icons.person_outline,
                        title: "Incident Report",
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvents.MyAccountClickedEvent);
                        },
                      ),
                      MenuItem(
                        icon: Icons.shopping_bag_outlined,
                        title: "Daily Logs",
                        onTap: () {
                          onIconPressed();
                          BlocProvider.of<NavigationBloc>(context)
                              .add(NavigationEvents.MyOrdersClickedEvent);
                        },
                      ),
                      MenuItem(
                        icon: Icons.favorite_border,
                        title: "Wishlist",
                      ),
                      Divider(
                        height: 64,
                        thickness: 0.5,
                        color: Colors.white,
                        indent: 32,
                        endIndent: 32,
                      ),
                      MenuItem(
                        icon: Icons.settings_outlined,
                        title: "Setting",
                      ),
                      MenuItem(
                        icon: Icons.logout,
                        title: "Logout",
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.9),
                child: GestureDetector(
                  onTap: onIconPressed,
                  child: ClipPath(
                    clipper: CustomMenuClipper(),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 110,
                      width: 35,
                      color: Color(0xff47596E),
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_close,
                        color: Color(0xff1BB5FD),
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0.0, 0.0);
    path.quadraticBezierTo(0, 3, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 3, 0, height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
