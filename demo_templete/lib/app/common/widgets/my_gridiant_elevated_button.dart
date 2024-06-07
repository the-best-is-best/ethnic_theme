import 'package:demo_templete/app/res/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tbib_flutter_simple_ui/tbib_flutter_simple_ui.dart';

class GradientElevatedButton extends StatelessWidget {
  final Function()? _onPressed;
  final String _text;
  final bool isValid;
  const GradientElevatedButton({
    required Function()? onPressed,
    required String text,
    this.isValid = false,
    super.key,
  })  : _text = text,
        _onPressed = onPressed;

  @override
  Widget build(BuildContext context) {
    return MyGradientElevatedButton(
      text: _text,
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: isValid
              ? <Color>[AppColor.primaryColor, const Color(0xff235DFF)]
              : <Color>[
                  AppColor.primaryColor.withOpacity(0.7),
                  const Color(0xff235DFF).withOpacity(0.7)
                ]),
      buttonStyle: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      onPressed: _onPressed,
      textStyle: getBoldStyle(
          fontSize: FontSize.s20,
          fontFamily: GoogleFonts.montserrat().fontFamily),
    );
  }
}
