import 'package:f_dashboard/core/const/appbar_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideBarHeader extends StatelessWidget {
  const SideBarHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.headline6,
        ),
        const Spacer(),
        const Expanded(child: SearchWidget()),
        const ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white10),
        color: AppbarConst.secondaryColor,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profile_pic.png',
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text("Nishant Joshi"),
          ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Search",
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(16 * 0.75),
            decoration: const BoxDecoration(
              color: AppbarConst.primaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
        fillColor: AppbarConst.secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
