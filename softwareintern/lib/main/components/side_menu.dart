import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Center(child: Text("MENU",style: TextStyle(color: Colors.white54,fontSize: 28,fontWeight: FontWeight.bold ),)),
            ),
          ),
          DrawerListTile(
            title: "Dashboard",
            icon: Icons.speed,
            svgSrc: "assets/icons/menu_dashboard.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Doctor",
            icon: Icons.medication,
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Patients",
            icon: Icons.person,
            svgSrc: "assets/icons/menu_task.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Department",
            icon: Icons.engineering,
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Roles",
            icon: Icons.expand_more,
            svgSrc: "assets/icons/menu_store.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Clients",
            icon: Icons.expand_more,
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Users",
            icon: Icons.expand_more,
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Reports",
            icon: Icons.expand_more,
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Nurse/Supporting Staff",
            icon: Icons.expand_more,
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: 
      Icon(icon,color: Colors.white54,),
      // Icon(icon)
      //  colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
      //   height: 16,
      // SvgPicture.asset(
      //   svgSrc,
      //   colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
      //   height: 16,
      // ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
} 