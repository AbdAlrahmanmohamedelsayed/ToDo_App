import 'package:flutter/material.dart';
import 'package:todo_app_new/Modules/settinges/setting.dart';
import 'package:todo_app_new/Modules/taasks/taskesview.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int selectedIndex = 0;
  List<Widget> screens = [Taskesview(), SettingsView()];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      extendBody: true,
      body: screens[selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        onPressed: () {},
        child: CircleAvatar(
          backgroundColor: theme.primaryColor,
          radius: 25,
          child: const Icon(
            Icons.add,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 15,
        height: 93,
        color: Colors.white,
        child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: selectedIndex,
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  label: 'Lists',
                  icon: ImageIcon(AssetImage('assets/images/icon_list.png'))),
              BottomNavigationBarItem(
                  label: 'Setinges',
                  icon:
                      ImageIcon(AssetImage('assets/images/icon_settings.png'))),
            ]),
      ),
    );
  }
}
