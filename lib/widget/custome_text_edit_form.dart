// import 'package:flutter/material.dart';

// class CustomTextFormField extends StatelessWidget {
//   final String hintText;
//   final int? maxLines;
//   final bool showDropdownIcon;
//   final VoidCallback? onPressed;
//   final IconData? customIcon;
//    final FormFieldValidator<String>? validator;

//   const CustomTextFormField({
//     super.key,
//     required this.hintText,
//     this.maxLines = 1, // Default to single line
//     this.showDropdownIcon = false,
//     this.onPressed,
//     this.customIcon,
//       this.validator,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 35, // Adjust height for smaller size
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black26, width: 1.5), // Thinner border
//         borderRadius: BorderRadius.circular(6), // Smaller border radius
//       ),
//       child: TextFormField(
//         maxLines: maxLines,
//         validator: validator,
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           hintText: hintText,
//           contentPadding: const EdgeInsets.symmetric(
//             vertical: 10, // Reduced vertical padding
//             horizontal: 12, // Reduced horizontal padding
//           ),
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
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;
  final bool  obscureText;
  final TextEditingController? controller;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.showDropdownIcon = false,
    this.onPressed,
    this.customIcon,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      validator: validator, // Validation logic
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 34,
              decoration: BoxDecoration(
                border: Border.all(
                  color: state.hasError ? Colors.red : Colors.black26,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: TextFormField(
                obscureText: obscureText,
                maxLines: maxLines,
                cursorHeight: 15,
                controller: controller,

                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    suffixIcon: suffixIcon
                    // ? IconButton(
                    //     icon: const Icon(Icons.arrow_drop_down),
                    //     onPressed: onPressed,
                    //   )
                    // : null,
                    ),
                onChanged: state.didChange, // Update FormFieldState
              ),
            ),
            if (state.hasError) // Show error message if validation fails
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  state.errorText ?? '',
                  style: const TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
          ],
        );
      },
    );
  }
}
