import 'package:flutter/material.dart';

import '../widget/home_widget.dart';
import '../widget/menu_widget.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0;

  void _onTap(value) {
    index = value;
    setState(() {});
  }

  final List<Widget> _list = [HomeWidget(), MenuWidget()];

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
        borderSide: Divider.createBorderSide(context),
        borderRadius: BorderRadius.circular(15));
    return Scaffold(
      body: _list[index],
      bottomNavigationBar: Theme(
        data: ThemeData(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent),
        child: BottomNavigationBar(
          onTap: _onTap,
          currentIndex: index,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: (index == 0) ? Colors.red : Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: (index == 1) ? Colors.red : Colors.grey,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
