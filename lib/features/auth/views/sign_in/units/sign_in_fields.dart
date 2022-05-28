part of '../view.dart';

class _SignInFields extends StatelessWidget {
  const _SignInFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        AppTextField(hintText: AppStrings.email),
        AppTextField(
          isPassword: true,
          hintText: AppStrings.password,
        ),
      ],
    );
  }
}
