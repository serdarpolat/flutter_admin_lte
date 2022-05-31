import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';

import 'lte_card_body.dart';
import 'lte_card_header.dart';

class LteCard extends StatelessWidget {
  const LteCard({
    Key? key,
    required this.body,
    this.header,
    this.bgColor,
  }) : super(key: key);
  final Widget? header;
  final Widget body;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //! Card header
          if (header != null) LteCardHeader(child: header),
          //! Card body
          LteCardBody(child: body),
        ],
      ),
      decoration: BoxDecoration(
        color: bgColor ?? Clr.white,
        borderRadius: BorderRadius.circular(Sizes.h(8)),
        boxShadow: [
          BoxShadow(
            color: Clr.black.withOpacity(0.05),
            offset: Offset(0, 0),
            blurRadius: Sizes.h(0.5),
          ),
          BoxShadow(
            color: Clr.black.withOpacity(0.1),
            offset: Offset(0, 1),
            blurRadius: Sizes.h(1.5),
          ),
        ],
      ),
    );
  }
}
