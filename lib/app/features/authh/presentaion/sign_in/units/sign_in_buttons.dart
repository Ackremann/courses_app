// part of '../view.dart';

// class _SignInButtons extends StatelessWidget {
//   const _SignInButtons({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: AppPadding.p30),
//       child: Column(
//         // crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           MainButton(
//             text: AppStrings.signIn,
//             onPressed: () {},
//             height: AppSize.s40,
//             width: sizeFromWidth(context, 1),
//           ),
//           MainTextButton(
//             text: AppStrings.forgetPassword,
//             onPressed: () {},
//           ),
//           MainButton(
//             width: sizeFromWidth(context, 1),
//             height: AppSize.s40,
//             onPressed: () {
//               MagicRouter.navigateTo(const SignUpAsView());
//             },
//             text: AppStrings.signUp,
//             primary: ColorManager.darkGreen,
//             onPrimary: ColorManager.primary,
//           ),
//         ],
//       ),
//     );
//   }
// }
