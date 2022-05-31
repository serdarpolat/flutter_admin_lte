import 'package:admin_lte/views/components/components_files.dart';
import 'package:city_picker_from_map/city_picker_from_map.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../core/core.dart';

class CityMap extends StatefulWidget {
  const CityMap({Key? key}) : super(key: key);

  @override
  State<CityMap> createState() => _CityMapState();
}

class _CityMapState extends State<CityMap> {
  bool closed = false;
  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.h(8)),
      child: LteCard(
        bgColor: Clr.blue,
        header: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.pin_drop,
                  color: Clr.white,
                ),
                SizedBox(width: 6),
                Text(
                  "Visitors",
                  style: TextStyle(
                    color: Clr.white,
                    fontSize: Sizes.h(1.1.rem),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Material(
                  elevation: 0,
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: 32,
                      height: 32,
                      child: Center(
                        child: Icon(
                          Ionicons.calendar_outline,
                          color: Clr.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  elevation: 0,
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => setState(() => closed = !closed),
                    child: SizedBox(
                      width: 32,
                      height: 32,
                      child: Center(
                        child: Icon(
                          closed ? Icons.add : Icons.remove,
                          color: Clr.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: AnimatedContainer(
          duration: Duration(milliseconds: 240),
          height: closed ? 0 : 290 + 104,
          child: SingleChildScrollView(
            controller: controller,
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 290,
                  child: Padding(
                    padding: EdgeInsets.all(1.25.rem),
                    child: Center(
                      child: CityPickerMap(
                        width: 440,
                        height: 290 - 2.5.rem,
                        map: Maps.USA,
                        onChanged: (city) {
                          print(city);
                        },
                        actAsToggle: true,
                        dotColor: Colors.white,
                        selectedColor: Colors.lightBlueAccent,
                        strokeColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
