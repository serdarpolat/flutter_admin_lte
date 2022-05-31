import 'package:admin_lte/core/core.dart';
import 'package:admin_lte/views/components/components_files.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContentHeader(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.h(8)),
          child: LteCard(
            header: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Ionicons.create,
                      color: Clr.dark,
                    ),
                    SizedBox(width: 6),
                    Text(
                      "Buttons",
                      style: TextStyle(
                        color: Clr.dark,
                        fontSize: Sizes.h(1.1.rem),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            body: Table(
              border: TableBorder.all(
                color: Clr.borderGray,
                width: 0.5,
              ),
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: Text(
                        "Normal",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: Text(
                        "Large",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: Text(
                        "Small",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: Text(
                        "Extra Small",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: Text(
                        "Flat",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: Text(
                        "Disabled",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.light,
                        borderColor: Clr.black,
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Default",
                              style: TextStyle(
                                color: Clr.black,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonLG(
                        bgColor: Clr.light,
                        borderColor: Clr.black,
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Default",
                              style: TextStyle(
                                color: Clr.black,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonSM(
                        bgColor: Clr.light,
                        borderColor: Clr.black,
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Default",
                              style: TextStyle(
                                color: Clr.black,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonXS(
                        bgColor: Clr.light,
                        borderColor: Clr.black,
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Default",
                              style: TextStyle(
                                color: Clr.black,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonFlat(
                        bgColor: Clr.light,
                        borderColor: Clr.black,
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Default",
                              style: TextStyle(
                                color: Clr.black,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.light,
                        borderColor: Clr.black,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Default",
                              style: TextStyle(
                                color: Clr.black,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.blue,
                        borderColor: Clr.blue.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Secondary",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonLG(
                        bgColor: Clr.blue,
                        borderColor: Clr.blue.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Secondary",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonSM(
                        bgColor: Clr.blue,
                        borderColor: Clr.blue.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Secondary",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonXS(
                        bgColor: Clr.blue,
                        borderColor: Clr.blue.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Secondary",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonFlat(
                        bgColor: Clr.blue,
                        borderColor: Clr.blue.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Secondary",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.blue,
                        borderColor: Clr.blue.withOpacity(0.5),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Secondary",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.secondary,
                        borderColor: Clr.secondary.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Primary",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonLG(
                        bgColor: Clr.secondary,
                        borderColor: Clr.secondary.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Primary",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonSM(
                        bgColor: Clr.secondary,
                        borderColor: Clr.secondary.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Primary",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonXS(
                        bgColor: Clr.secondary,
                        borderColor: Clr.secondary.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Primary",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonFlat(
                        bgColor: Clr.secondary,
                        borderColor: Clr.secondary.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Primary",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.secondary,
                        borderColor: Clr.secondary.withOpacity(0.5),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Primary",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.green,
                        borderColor: Clr.green.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Success",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonLG(
                        bgColor: Clr.green,
                        borderColor: Clr.green.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Success",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonSM(
                        bgColor: Clr.green,
                        borderColor: Clr.green.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Success",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonXS(
                        bgColor: Clr.green,
                        borderColor: Clr.green.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Success",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonFlat(
                        bgColor: Clr.green,
                        borderColor: Clr.green.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Success",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.green,
                        borderColor: Clr.green.withOpacity(0.5),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Success",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.info,
                        borderColor: Clr.info.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Info",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonLG(
                        bgColor: Clr.info,
                        borderColor: Clr.info.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Info",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonSM(
                        bgColor: Clr.info,
                        borderColor: Clr.info.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Info",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonXS(
                        bgColor: Clr.info,
                        borderColor: Clr.info.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Info",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonFlat(
                        bgColor: Clr.info,
                        borderColor: Clr.info.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Info",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.info,
                        borderColor: Clr.info.withOpacity(0.5),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Info",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.danger,
                        borderColor: Clr.danger.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Danger",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonLG(
                        bgColor: Clr.danger,
                        borderColor: Clr.danger.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Danger",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonSM(
                        bgColor: Clr.danger,
                        borderColor: Clr.danger.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Danger",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonXS(
                        bgColor: Clr.danger,
                        borderColor: Clr.danger.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Danger",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonFlat(
                        bgColor: Clr.danger,
                        borderColor: Clr.danger.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Danger",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.danger,
                        borderColor: Clr.danger.withOpacity(0.5),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Danger",
                              style: TextStyle(
                                color: Clr.white,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.warning,
                        borderColor: Clr.warning.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Warning",
                              style: TextStyle(
                                color: Clr.black,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonLG(
                        bgColor: Clr.warning,
                        borderColor: Clr.warning.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Warning",
                              style: TextStyle(
                                color: Clr.black,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonSM(
                        bgColor: Clr.warning,
                        borderColor: Clr.warning.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Warning",
                              style: TextStyle(
                                color: Clr.black,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonXS(
                        bgColor: Clr.warning,
                        borderColor: Clr.warning.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Warning",
                              style: TextStyle(
                                color: Clr.black,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonFlat(
                        bgColor: Clr.warning,
                        borderColor: Clr.warning.withOpacity(0.5),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Warning",
                              style: TextStyle(
                                color: Clr.black,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.h(0.75).rem),
                      child: ButtonNormal(
                        bgColor: Clr.warning,
                        borderColor: Clr.warning.withOpacity(0.5),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: Sizes.h(1).rem),
                          child: Center(
                            child: Text(
                              "Warning",
                              style: TextStyle(
                                color: Clr.black,
                                fontSize: Sizes.h(14),
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
