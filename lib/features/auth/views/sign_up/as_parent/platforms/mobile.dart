part of '../view.dart';

class ParentSignUpViewMobile extends StatelessWidget {
  const ParentSignUpViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: AppPadding.p50,
          right: AppPadding.p20,
          left: AppPadding.p20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _SignUpLogo(),
            _SignUpFields(),
            _SignUpButtons(),
          ],
        ),
      ),
    );
  }
}
