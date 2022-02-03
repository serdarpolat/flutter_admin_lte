import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:html' as html;

class SidebarLinkToGithub extends StatefulWidget {
  const SidebarLinkToGithub({
    Key? key,
  }) : super(key: key);

  @override
  State<SidebarLinkToGithub> createState() => _SidebarLinkToGithubState();
}

class _SidebarLinkToGithubState extends State<SidebarLinkToGithub> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onHover: (val) {
        setState(() {
          onHover = val;
        });
      },
      onPressed: () {
        html.window.open('https://github.com/serdarpolat/flutter_admin_lte', 'new tab');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "Github".toICNSvg,
            width: 18,
            color: onHover ? Clr.white : Clr.gray,
          ),
          SizedBox(width: 6),
          Text(
            "Flutter - AdminLTE v1",
            style: TextStyle(
              color: onHover ? Clr.white : Clr.gray,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
