import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.onTap, @required this.icon});
  final Function onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      // elevation: 0,
      // shape: CircleBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(
        icon,
      ),
      constraints: BoxConstraints.tightFor(height: 56, width: 56),
    );
  }
}
