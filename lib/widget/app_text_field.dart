import 'package:courses_app/const/resources/color_manager.dart';
import 'package:courses_app/const/resources/values_manager.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    this.preIcon,
    this.keyboardType,
    this.hintText,
    this.isPassword = false,
    Key? key,
  }) : super(key: key);

  final bool isPassword;
  final String? hintText;
  final TextInputType? keyboardType;
  final Widget? preIcon;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p14),
      child: TextField(
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          suffixIcon: widget.isPassword
              ? IconButton(
                  splashRadius: AppSize.s14,
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: showPassword
                        ? ColorManager.lightGrey
                        : ColorManager.darkGrey,
                  ),
                  onPressed: () {
                    showPassword = !showPassword;
                    setState(() {});
                  },
                )
              : null,
          prefixIcon: widget.isPassword
              ? Icon(
                  Icons.lock,
                  color: ColorManager.red,
                )
              : widget.preIcon,
          hintText: widget.hintText,
        ),
        cursorColor: ColorManager.primary,
      ),
    );
  }
}
