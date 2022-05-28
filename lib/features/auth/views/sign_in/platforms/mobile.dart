part of '../view.dart';

class SignInViewMobile extends StatelessWidget {
  const SignInViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p20,
        vertical: AppPadding.p50,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _SignInLogo(),
            _SignInFields(),
            _SignInButtons(),
          ],
        ),
      ),
    );
  }
}
