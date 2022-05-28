import 'package:courses_app/const/resources/color_manager.dart';
import 'package:courses_app/const/resources/strings_manager.dart';
import 'package:courses_app/const/resources/values_manager.dart';



import 'package:courses_app/widget/app_text_field.dart';
import 'package:courses_app/widget/main_elevated_button.dart';
import 'package:courses_app/widget/main_text_button.dart';
import 'package:courses_app/widget/view_responsive.dart';
import 'package:flutter/material.dart';

import '../../../../core/services/responsive/responsive.dart';
import '../../../../core/services/routes/routes.dart';
import '../sing_up_as/view.dart';
part 'units/sign_in_buttons.dart';
part 'units/sign_in_fields.dart';
part 'units/sign_in_logo.dart';
part 'platforms/mobile.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        mobile: SignInViewMobile(),
        tablet: SignInViewMobile(),
        web: SignInViewMobile(),
      ),
    );
  }
}
