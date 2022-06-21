// import 'package:courses_app/app/const/resources/color_manager.dart';

// import '../../config/routes/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:onboarding/onboarding.dart';

// import '../auth/presentaion/sign_up/as_student/view.dart';

// class OnBoardingView extends StatefulWidget {
//   const OnBoardingView({Key? key}) : super(key: key);

//   @override
//   State<OnBoardingView> createState() => _OnBoardingViewState();
// }

// class _OnBoardingViewState extends State<OnBoardingView> {
//   late int index;

//   final onboardingPagesList = [
//     PageModel(
//       widget: DecoratedBox(
//         decoration: BoxDecoration(
//           // color: background,
//           border: Border.all(
//             width: 0.0,
//             color: background,
//           ),
//         ),
//         child: SingleChildScrollView(
//           controller: ScrollController(),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 45.0,
//                   vertical: 90.0,
//                 ),
//                 child: Image.asset(
//                   'assets/images/facebook.png',
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'SECURED BACKUP',
//                     style: pageTitleStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Keep your files in closed safe so you can\'t lose them. Consider TrueNAS.',
//                     style: pageInfoStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Keep your files in closed safe so you can\'t lose them. Consider TrueNAS.',
//                     style: pageInfoStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Keep your files in closed safe so you can\'t lose them. Consider TrueNAS.',
//                     style: pageInfoStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'Keep your files in closed safe so you can\'t lose them. Consider TrueNAS.',
//                     style: pageInfoStyle,
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//     PageModel(
//       widget: SingleChildScrollView(
//         controller: ScrollController(),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 45.0,
//                 vertical: 90.0,
//               ),
//               child: Image.asset(
//                 'assets/images/facebook.png',
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 45.0),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'CHANGE AND RISE',
//                   style: pageTitleStyle,
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Give others access to any file or folders you choose',
//                   style: pageInfoStyle,
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//     PageModel(
//       widget: SingleChildScrollView(
//         controller: ScrollController(),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 45.0,
//                 vertical: 90.0,
//               ),
//               child: Image.asset(
//                 'assets/images/facebook.png',
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 45.0),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'EASY ACCESS',
//                   style: pageTitleStyle,
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Reach your files anytime from any devices anywhere',
//                   style: pageInfoStyle,
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   ];

//   static const width = 100.0;
//   @override
//   void initState() {
//     super.initState();
//     index = 0;
//   }

//   SizedBox _skipButton({void Function(int)? setIndex}) {
//     return SizedBox(
//       width: width,
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Material(
//           color: ColorManager.primary,
//           borderRadius: defaultSkipButtonBorderRadius,
//           child: InkWell(
//             borderRadius: defaultSkipButtonBorderRadius,
//             onTap: () {
//               if (setIndex != null) {
//                 index = 2;
//                 setIndex(2);
//               }
//             },
//             child: const Padding(
//               padding: defaultSkipButtonPadding,
//               child: Text(
//                 'Skip',
//                 style: defaultSkipButtonTextStyle,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   SizedBox get _signupButton {
//     return SizedBox(
//       width: width,
//       child: Align(
//         alignment: Alignment.centerLeft,
//         child: Material(
//           borderRadius: defaultProceedButtonBorderRadius,
//           color: ColorManager.primary,
//           child: InkWell(
//             borderRadius: defaultProceedButtonBorderRadius,
//             onTap: () {
//               MagicRouter.navigateAndPopAll(const StudentSignUpView());
//             },
//             child: const Padding(
//               padding: defaultProceedButtonPadding,
//               child: Text(
//                 'Sign up',
//                 style: defaultProceedButtonTextStyle,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Onboarding(
//           pages: onboardingPagesList,
//           onPageChange: (int pageIndex) {
//             index = pageIndex;
//           },
//           footerBuilder: (context, dragDistance, pagesLength, setIndex) {
//             return DecoratedBox(
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   width: 0.0,
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(45.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     index != pagesLength - 1
//                         ? _skipButton(setIndex: setIndex)
//                         : _signupButton,
//                     Padding(
//                       padding: const EdgeInsets.only(right: 45.0),
//                       child: CustomIndicator(
//                         netDragPercent: dragDistance,
//                         pagesLength: pagesLength,
//                         indicator: Indicator(
//                           closedIndicator:
//                               ClosedIndicator(color: ColorManager.primary),
//                           activeIndicator:
//                               ActiveIndicator(color: ColorManager.primary),
//                           indicatorDesign: IndicatorDesign.polygon(
//                             polygonDesign: PolygonDesign(
//                               polygon: DesignType.polygon_circle,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }
