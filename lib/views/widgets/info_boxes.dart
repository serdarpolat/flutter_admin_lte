import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';

import '../../core/providers/media_provider.dart';

class InfoBoxes extends StatelessWidget {
  const InfoBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Info Box',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 1.25.rem,
          ),
        ).padding8,
        SizedBox(height: 10),
        if (MediaProvider.screen(context) == BPoints.xlarge || MediaProvider.screen(context) == BPoints.large)
          Row(
            children: [
              Expanded(
                child: InfoBox(
                  icon: Icons.mail_outline,
                  iconBgColor: Clr.info,
                  title: 'Messages',
                  subtitle: '1,410',
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: InfoBox(
                  icon: Icons.flag,
                  iconBgColor: Clr.success,
                  title: 'Bookmarks',
                  subtitle: '410',
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: InfoBox(
                  icon: Icons.file_upload_outlined,
                  iconBgColor: Clr.warning,
                  title: 'Uploads',
                  subtitle: '13,648',
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                child: InfoBox(
                  icon: Icons.favorite_border,
                  iconBgColor: Clr.danger,
                  title: 'Likes',
                  subtitle: '93,139',
                ),
              ),
            ],
          ).padding8,
        if (MediaProvider.screen(context) == BPoints.medium)
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: InfoBox(
                      icon: Icons.mail_outline,
                      iconBgColor: Clr.info,
                      title: 'Messages',
                      subtitle: '1,410',
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: InfoBox(
                      icon: Icons.flag,
                      iconBgColor: Clr.success,
                      title: 'Bookmarks',
                      subtitle: '410',
                    ),
                  ),
                ],
              ).padding8,
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: InfoBox(
                      icon: Icons.file_upload_outlined,
                      iconBgColor: Clr.warning,
                      title: 'Uploads',
                      subtitle: '13,648',
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: InfoBox(
                      icon: Icons.favorite_border,
                      iconBgColor: Clr.danger,
                      title: 'Likes',
                      subtitle: '93,139',
                    ),
                  ),
                ],
              ).padding8,
            ],
          ),
        if (MediaProvider.screen(context) == BPoints.small)
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InfoBox(
                icon: Icons.mail_outline,
                iconBgColor: Clr.info,
                title: 'Messages',
                subtitle: '1,410',
              ),
              SizedBox(height: 8),
              InfoBox(
                icon: Icons.flag,
                iconBgColor: Clr.success,
                title: 'Bookmarks',
                subtitle: '410',
              ),
              SizedBox(height: 8),
              InfoBox(
                icon: Icons.file_upload_outlined,
                iconBgColor: Clr.warning,
                title: 'Uploads',
                subtitle: '13,648',
              ),
              SizedBox(height: 8),
              InfoBox(
                icon: Icons.favorite_border,
                iconBgColor: Clr.danger,
                title: 'Likes',
                subtitle: '93,139',
              ),
            ],
          ).padding8,
      ],
    );
  }
}
