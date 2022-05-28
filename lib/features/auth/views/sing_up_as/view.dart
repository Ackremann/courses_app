import 'package:courses_app/const/resources/color_manager.dart';
import 'package:courses_app/const/resources/strings_manager.dart';
import 'package:courses_app/const/resources/values_manager.dart';

import '../../../../../core/services/routes/routes.dart';

import 'package:courses_app/widget/view_responsive.dart';
import 'package:flutter/material.dart';

import '../sign_up/as_student/view.dart';
part 'units/sign_up_cards.dart';
part 'units/tittle.dart';
part 'platforms/mobile.dart';

class SignUpAsView extends StatelessWidget {
  const SignUpAsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Responsive(
          mobile: SignUpAsViewMobile(),
          tablet: SignUpAsViewMobile(),
          web: SignUpAsViewMobile(),
        ),
      ),
    );
  }
}
