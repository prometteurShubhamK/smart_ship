// //
// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// //
// // /// Custom Text Input Fields
// // class TextInputFields extends StatelessWidget {
// //   /// Constructs a new TextInputFields
// //   const TextInputFields(
// //       {Key? key,
// //         this.suffixWidget,
// //         this.prefixWidget,
// //         this.keyboardType,
// //         this.validator,
// //         this.controller,
// //         this.obSecureText,
// //         this.onTap,
// //         this.readOnly,
// //         this.contentPadding,
// //         this.scrollPadding,
// //         this.textAlign,
// //         this.name,
// //         this.hintText,
// //         this.errorText,
// //         this.suffix,
// //         this.focusNode,
// //         this.hintTextStyle,
// //         this.textStyle,
// //         this.suffixIconConstraints,
// //         this.filled,
// //         this.Colorr,
// //         this.onChanged,
// //         this.errorStyle,
// //         this.maxLine = 1,
// //         this.fontSize,
// //         this.icon,
// //         this.isDense = false,
// //         this.enableBorderColor,
// //         this.inputFormatters, required InputDecoration decoration})
// //       : super(key: key);
// //
// //   /// Suffix widget
// //   final Widget? suffixWidget;
// //
// //   /// Prefix widget
// //   final Widget? prefixWidget;
// //   final Color? enableBorderColor;
// //   /// Keyboard type
// //   final TextInputType? keyboardType;
// //   final String? errorText;
// //
// //   /// Validator
// //   final String? Function(String?)? validator;
// //
// //   /// TextEditing controller
// //   final TextEditingController? controller;
// //
// //   final bool? obSecureText;
// //   final VoidCallback? onTap;
// //   final TextAlign? textAlign;
// //   final TextStyle? errorStyle;
// //   final double? fontSize;
// //   final bool? readOnly;
// //   final String? name;
// //   final EdgeInsetsGeometry? contentPadding;
// //   final EdgeInsets? scrollPadding;
// //   final String? hintText;
// //   final Widget? suffix;
// //   final FocusNode? focusNode;
// //   final TextStyle? hintTextStyle;
// //   final Function(String)? onChanged;
// //   final TextStyle? textStyle;
// //   final bool? filled;
// //   final Color? Colorr;
// //   final BoxConstraints? suffixIconConstraints;
// //   final int maxLine;
// //   final bool isDense;
// //   final List<TextInputFormatter>? inputFormatters;
// //   final IconData? icon;
// //
// //   @override
// //   Widget build(BuildContext context) => TextFormField(
// //     textAlign: textAlign ?? TextAlign.start,
// //     controller: controller,
// //     decoration: InputDecoration(
// //         border: OutlineInputBorder(),
// //         hintText: hintText,
// //         labelStyle: TextStyle(
// //             fontWeight: FontWeight.w400,
// //             fontSize: 12,
// //             color: Colorr),
// //         suffixIcon: Icon(icon)),
// //   );
// //
// // }
//
// // ignore_for_file: public_member_api_docs
//
// import 'package:flutter/services.dart';
// import 'package:get/get_utils/src/extensions/export.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class TextInputFields extends StatelessWidget {
//   /// Constructs a new TextInputFields
//   const TextInputFields(
//       {Key? key,
//         this.suffixWidget,
//         this.prefixWidget,
//         this.keyboardType,
//         this.validator,
//         this.controller,
//         this.obSecureText,
//         this.onTap,
//         this.readOnly,
//         this.contentPadding,
//         this.textAlign,
//         this.name,
//         this.hintText,
//         this.suffix,
//         this.focusNode,
//         this.nameColor,
//         this.hintTextStyle,
//         this.textStyle,
//         this.suffixIconConstraints,
//         this.filled,
//         this.borderColor,
//         this.onChanged,
//         this.errorStyle,
//         this.maxLine = 1,
//         this.fontSize,
//         this.fillColor,
//         this.onFieldSubmitted,
//         this.inputFormatters,
//         // this.enabledBorder,
//         // this.focusedBorder,
//         this.focusedErrorBorder,
//         this.errorBorder,
//         this.isDense = true,
//         this.title,
//         this.subTitle, this.prefixIconConstraints, required InputDecoration decoration})
//       : super(key: key);
//
//   /// Suffix widget
//   final Widget? suffixWidget;
//
//   /// Prefix widget
//   final Widget? prefixWidget;
//
//   /// Keyboard type
//   final TextInputType? keyboardType;
//
//   /// Validator
//   final String? Function(String?)? validator;
//
//   /// TextEditing controller
//   final TextEditingController? controller;
//   final Color? fillColor;
//   final bool? obSecureText;
//   final VoidCallback? onTap;
//   final TextAlign? textAlign;
//   final TextStyle? errorStyle;
//   final double? fontSize;
//   final bool? readOnly;
//   final String? name;
//   final EdgeInsetsGeometry? contentPadding;
//   final String? hintText;
//   final Widget? suffix;
//   final bool isDense;
//   final FocusNode? focusNode;
//   final Color? nameColor;
//   final TextStyle? hintTextStyle;
//   final Function(String)? onChanged;
//   final TextStyle? textStyle;
//   final bool? filled;
//   final Color? borderColor;
//   final BoxConstraints? suffixIconConstraints;
//   final BoxConstraints? prefixIconConstraints;
//   final int maxLine;
//   final List<TextInputFormatter>? inputFormatters;
//   final String? title;
//   final String? subTitle;
//   // final InputBorder? enabledBorder;
//   final InputBorder? focusedErrorBorder;
//
//   // final InputBorder? focusedBorder;
//   final InputBorder? errorBorder;
//   final Function(String)? onFieldSubmitted;
//
//   @override
//   Widget build(BuildContext context) => Column(
//     mainAxisSize: MainAxisSize.min,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       title != null
//           ? Row(
//         children: [
//           Text(title ?? "",
//               style: GoogleFonts.poppins(
//                   fontSize: 15.sp,
//                   fontWeight: FontWeight.w500,
//                   )),
//           subTitle != null
//               ? Text(subTitle ?? '',
//               style: GoogleFonts.poppins(
//                   fontSize: 15.sp,
//                   fontWeight: FontWeight.w500,
//                   ))
//               : SizedBox()
//         ],
//       ).paddingSymmetric(vertical: 10.h)
//           : SizedBox(),
//       TextFormField(
//         onFieldSubmitted: onFieldSubmitted,
//         focusNode: focusNode,
//         readOnly: readOnly ?? false,
//         textAlign: textAlign ?? TextAlign.start,
//         style: textStyle ??
//             GoogleFonts.inter().copyWith(
//               fontSize: fontSize ?? 18.sp,
//
//             ),
//         onChanged: onChanged,
//         onTap: onTap,
//         obscureText: obSecureText ?? false,
//         controller: controller,
//         keyboardType: keyboardType,
//
//         validator: validator,
//         maxLines: maxLine,
//         inputFormatters: inputFormatters,
//         decoration: InputDecoration(
//           isDense: isDense,
//           filled: filled,
//           fillColor: fillColor,
//           hintText: hintText,
//           hintStyle: hintTextStyle ??
//               GoogleFonts.inter().copyWith(
//               ),
//           errorMaxLines: 2,
//           errorStyle: GoogleFonts.poppins(
//               fontSize: 17.sp,
//               fontWeight: FontWeight.w400,
//               ),
//           contentPadding:
//           contentPadding ?? EdgeInsets.only(top: 10.h, bottom: 10.h),
//           border: border,
//
//           suffixIconConstraints: suffixIconConstraints,
//           prefixIconConstraints: prefixIconConstraints,
//           disabledBorder: border,
//
//           suffixIcon: suffixWidget,
//           prefixIcon: prefixWidget,
//         ),
//       ),
//     ],
//   );
//
//   /// Border
//   OutlineInputBorder get border => OutlineInputBorder(
//     borderRadius: BorderRadius.circular(10.r),
//     borderSide: BorderSide(
//       width: 1.r,
//     ),
//   );
// }
