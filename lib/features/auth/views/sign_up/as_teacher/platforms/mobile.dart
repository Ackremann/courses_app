part of '../view.dart';

class TeacherSignUpViewMobile extends StatelessWidget {
  const TeacherSignUpViewMobile({Key? key}) : super(key: key);

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
