import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pathok_app/Shared/Const.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;

  const CustomAppBar({Key key, this.title = 'Home', this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Container(
        height: 95,
        // color: Color(0xff772de8),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(55),
            // bottomLeft: Radius.circular(55),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 17, 0, 0),
            child: Text(
              title,
              style: GoogleFonts.lilitaOne(
                textStyle: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}
