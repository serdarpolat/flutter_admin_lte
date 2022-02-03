import 'package:admin_lte/core/core.dart';
import 'package:flutter/material.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 38,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: 38,
              child: TextField(
                style: TextStyle(
                  color: Clr.white,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, bottom: 11),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Clr.gray,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            flex: 9,
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Icon(
                  Icons.search,
                  color: Clr.white,
                ),
              ),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Clr.borderGray,
                    width: 1,
                  ),
                ),
              ),
            ),
            flex: 2,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Clr.gray.withOpacity(0.2),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: Clr.borderGray,
          width: 1,
        ),
      ),
    );
  }
}
