part of '../view.dart';

class SignUpAsViewMobile extends StatelessWidget {
  const SignUpAsViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p30,
            vertical: AppPadding.p50,
          ),
          child: _SignUpAsTittle(),
        ),
        _SignUpCards(),
      ],
    );
  }
}
