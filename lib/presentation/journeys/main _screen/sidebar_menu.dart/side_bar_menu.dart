import 'package:f_dashboard/core/const/appbar_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: AppbarConst.secondaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DrawerHeaderImage(),
            DrawerListtile(
              drawertitle: "Dashboard",
              press: () {},
              svgSrc: 'assets/icons/menu_dashbord.svg',
            ),
            DrawerListtile(
              drawertitle: "Analytics",
              press: () {},
              svgSrc: 'assets/icons/menu_tran.svg',
              expand: true,
              children: [
                DrawerChildren(
                  press: () {},
                  childrendrawertitle: "Month",
                ),
                DrawerChildren(
                  press: () {},
                  childrendrawertitle: "Year",
                ),  
              ],
            ),
            DrawerListtile(
              drawertitle: "Support Center",
              press: () {},
              svgSrc: 'assets/icons/menu_task.svg',
            ),
            DrawerListtile(
              drawertitle: "Check for Updates",
              press: () {},
              svgSrc: 'assets/icons/menu_doc.svg',
            ),
            DrawerListtile(
              drawertitle: "User Management",
              press: () {},
              svgSrc: 'assets/icons/menu_store.svg',
            ),
            DrawerListtile(
              expand: true,
              children: [
                DrawerChildren(
                  press: () {},
                  childrendrawertitle: "Day",
                ),
                DrawerChildren(
                  press: () {},
                  childrendrawertitle: "Month",
                ),
                DrawerChildren(
                  press: () {},
                  childrendrawertitle: "Year",
                ),
              ],
              drawertitle: "Plugins",
              press: () {},
              svgSrc: 'assets/icons/menu_notification.svg',
            ),
            DrawerListtile(
              drawertitle: "Profile",
              press: () {},
              svgSrc: 'assets/icons/menu_profile.svg',
            ),
            DrawerListtile(
              drawertitle: "Settings",
              press: () {},
              svgSrc: 'assets/icons/menu_setting.svg',
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerChildren extends StatelessWidget {
  const DrawerChildren(
      {Key? key, required this.childrendrawertitle, this.press})
      : super(key: key);

  final String childrendrawertitle;
  final VoidCallback? press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(right: 55, top: 10),
        child: const Text(
          'Tile one',
          style: TextStyle(color: Colors.white54, fontSize: 14),
        ),
      ),
    );
  }
}

class DrawerListtile extends StatelessWidget {
  const DrawerListtile({
    Key? key,
    required this.drawertitle,
    required this.svgSrc,
    required this.press,
    this.expand = false,
    this.children,
  }) : super(key: key);

  final String drawertitle, svgSrc;
  final VoidCallback press;
  final bool expand;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return expand
        ? ExpansionTile(
            expandedAlignment: Alignment.center,
            children: children!,
            leading: SvgPicture.asset(
              svgSrc,
              color: Colors.white54,
              height: 16,
            ),
            title: Text(
              drawertitle,
              style: const TextStyle(color: Colors.white54, fontSize: 14),
            ),
          )
        : ListTile(
            // onTap: press,
            // horizontalTitleGap: 0,
            leading: SvgPicture.asset(
              svgSrc,
              color: Colors.white54,
              height: 16,
            ),
            title: Text(
              drawertitle,
              style: const TextStyle(color: Colors.white54, fontSize: 14),
            ),
          );
  }
}

class DrawerHeaderImage extends StatelessWidget {
  const DrawerHeaderImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xff3D4050)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            width: 160,
            child: Image(
              image: NetworkImage(
                  'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png'),
            ),
          ),
          // Text("Event Nepal "),
          // Icon(
          //   Icons.chevron_right_outlined,
          // ),
        ],
      ),
    );
  }
}
