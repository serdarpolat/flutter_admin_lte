import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';

class SidebarHeader extends StatelessWidget {
  const SidebarHeader({
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
              Container(
                width: 33,
                height: 33,
                child: Icon(
                  Icons.group_work_outlined,
                  color: Clr.grayDark,
                  size: 28,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Clr.white,
                ),
              ),
              SizedBox(width: 16),
              Text(
                "AdminLTE",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Clr.white.withOpacity(0.8),
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
