import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Color(0xff373e98),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              NavItem(
                title: 'Home',
                tapEvent: () {},
              ),
              SizedBox(height: 10),
              NavItem(
                title: 'Find a Team',
                tapEvent: () {},
              ),
              SizedBox(height: 10),
              NavItem(
                title: 'My Projects',
                tapEvent: () {},
              ),
              SizedBox(height: 10),
              NavItem(
                title: 'About',
                tapEvent: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatefulWidget {
  final String title;
  final GestureTapCallback tapEvent;

  const NavItem({Key key, this.title, this.tapEvent}) : super(key: key);
  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          widget.title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
