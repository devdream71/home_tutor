// import 'package:flutter/material.dart';

// class CustomTextFormField extends StatelessWidget {
//   final String hintText;
//   final int? maxLines;
//   final bool showDropdownIcon;
//   final VoidCallback ? onPressed;
//   final IconData? customIcon;

//   const CustomTextFormField({
//     super.key,
//     required this.hintText,
//     this.maxLines,
//     this.showDropdownIcon = false,
//     this.onPressed,
//     this.customIcon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black26, width: 2),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: TextFormField(
//         maxLines: maxLines,
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           hintText: hintText,
//           contentPadding: const EdgeInsets.all(16),
//           suffixIcon: showDropdownIcon
//               ? IconButton(
//                   icon: const Icon(Icons.arrow_drop_down),
//                   onPressed: onPressed,
//                 )
//               : null,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final int? maxLines;
  final bool showDropdownIcon;
  final VoidCallback? onPressed;
  final IconData? customIcon;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1, // Default to single line
    this.showDropdownIcon = false,
    this.onPressed,
    this.customIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35, // Adjust height for smaller size
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26, width: 1.5), // Thinner border
        borderRadius: BorderRadius.circular(6), // Smaller border radius
      ),
      child: TextFormField(
        maxLines: maxLines,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10, // Reduced vertical padding
            horizontal: 12, // Reduced horizontal padding
          ),
          suffixIcon: showDropdownIcon
              ? IconButton(
                  icon: const Icon(Icons.arrow_drop_down),
                  onPressed: onPressed,
                )
              : null,
        ),
      ),
    );
  }
}
