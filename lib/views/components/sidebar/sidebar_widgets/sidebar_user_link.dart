import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';

class SidebarUserLink extends StatelessWidget {
  const SidebarUserLink({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Ink(
          width: double.infinity,
          height: 57,
          child: Row(
            children: [
              SizedBox(width: 16),
              ClipOval(
                  child: Image.asset(
                "user2-160x160".toIMGJpg,
                width: 33,
                height: 33,
                fit: BoxFit.cover,
              )),
              SizedBox(width: 16),
              Text(
                "Serdar POLAT",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Clr.white,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Clr.grayDark,
            border: Border(
              bottom: BorderSide(
                color: Clr.borderGray,
                width: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
