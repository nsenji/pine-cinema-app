import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.photoUrl,
    required this.radius,
    required this.borderColor,
    this.borderWidth = 2.0,
    required this.onPressed,
  });
  final String photoUrl;
  final double radius;
  final Color borderColor;
  final double borderWidth;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _borderDecoration(),
      child: InkWell(
        onTap: onPressed,
        //borderRadius: BorderRadius.circular(radius * 1.2),
        child: CircleAvatar(
          radius: radius,
          backgroundColor: Colors.black12,
          // ignore: unnecessary_null_comparison
          backgroundImage: photoUrl != null ? NetworkImage(photoUrl) : null,
          child: photoUrl.isEmpty
              ? Icon(
                  Icons.camera_alt,
                  size: radius,
                  color: const Color.fromARGB(255, 70, 66, 66),
                )
              : null,
        ),
      ),
    );
  }

  BoxDecoration? _borderDecoration() {
    return BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: borderColor,
        width: borderWidth,
      ),
    );
    // ignore: dead_code
    return null;
  }
}
