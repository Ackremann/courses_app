// part of '../view.dart';

// class _SignUpCards extends StatelessWidget {
//   const _SignUpCards({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SignUpCards(
//           onTap: () {
//             MagicRouter.navigateAndPopAll(const StudentSignUpView());
//           },
//           cardColor: ColorManager.darkGreen,
//           leadingColor: ColorManager.primary,
//           textColor: ColorManager.primary,
//           trailingColor: ColorManager.lightGreen,
//           text: AppStrings.student,
//         ),
//         SignUpCards(
//           onTap: () {},
//           cardColor: ColorManager.darkYellow,
//           leadingColor: ColorManager.yellow,
//           textColor: ColorManager.yellow,
//           trailingColor: ColorManager.lightYellow,
//           text: AppStrings.teacher,
//         ),
//         SignUpCards(
//           onTap: () {},
//           cardColor: ColorManager.darkRed,
//           leadingColor: ColorManager.red,
//           textColor: ColorManager.red,
//           trailingColor: ColorManager.lightRed,
//           text: AppStrings.parent,
//         ),
//       ],
//     );
//   }
// }

// class SignUpCards extends StatelessWidget {
//   const SignUpCards({
//     Key? key,
//     required this.onTap,
//     required this.cardColor,
//     required this.leadingColor,
//     required this.textColor,
//     required this.trailingColor,
//     required this.text,
//   }) : super(key: key);

//   final Color cardColor;
//   final Color leadingColor;
//   final Color textColor;
//   final Color trailingColor;
//   final String text;
//   final void Function()? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(
//         horizontal: AppSize.s30,
//         vertical: AppSize.s10,
//       ),
//       decoration: BoxDecoration(
//         color: cardColor,
//         borderRadius: BorderRadius.circular(AppSize.s30),
//       ),
//       child: ListTile(
//         onTap: onTap,
//         contentPadding: const EdgeInsets.all(AppSize.s20),
//         leading: Container(
//           padding: const EdgeInsets.all(AppSize.s8),
//           decoration: BoxDecoration(
//             color: leadingColor,
//             borderRadius: BorderRadius.circular(AppSize.s8),
//           ),
//           child: Icon(Icons.person, color: ColorManager.white),
//         ),
//         title: Text(text,
//             style: Theme.of(context)
//                 .textTheme
//                 .headlineSmall!
//                 .copyWith(color: textColor)),
//         trailing: Container(
//           width: 40,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: trailingColor,
//           ),
//           child: IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.play_arrow_rounded,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
