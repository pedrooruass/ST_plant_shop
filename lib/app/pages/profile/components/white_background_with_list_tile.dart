import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/profile/components/tile_profile_screens.dart';

class WhiteBackgroundWithListTile extends StatelessWidget {
  const WhiteBackgroundWithListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470,
      width: double.infinity,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 16),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(33),
            topRight: Radius.circular(33),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white54,
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ]),
      child: ListView(
        children: [
          TileProfileScreens(
            title: 'Your Plants',
            icon: FontAwesomeIcons.tree,
          ),
          TileProfileScreens(
            title: 'Privacy',
            icon: FontAwesomeIcons.userShield,
          ),
          TileProfileScreens(
            title: 'Notifications',
            icon: FontAwesomeIcons.solidBell,
          ),
          TileProfileScreens(
              title: 'Community Guidelines',
              icon: FontAwesomeIcons.peopleGroup),
          TileProfileScreens(
              title: 'Support', icon: FontAwesomeIcons.circleQuestion),
          TileProfileScreens(
            title: 'Sign out',
            icon: FontAwesomeIcons.arrowRightFromBracket,
            isSignOut: true,
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
