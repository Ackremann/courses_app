// part of '../view.dart';

// class _BottomNav extends StatelessWidget {
//   const _BottomNav({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NavigationCubit, NavigationState>(
//       builder: (context, state) {
//         return ClipRRect(
//           borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(AppSize.s25),
//             topRight: Radius.circular(AppSize.s25),
//           ),
//           child: BottomNavigationBar(
//             currentIndex: state.index,
//             showUnselectedLabels: false,
//             items: const [
//               BottomNavigationBarItem(
//                 icon: Padding(
//                   padding: EdgeInsets.only(top: 8, bottom: 8),
//                   child: Icon(
//                     Icons.home,
//                   ),
//                 ),
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.settings,
//                 ),
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.person,
//                 ),
//                 label: '',
//               ),
//             ],
//             onTap: (index) {
//               if (index == 0) {
//                 BlocProvider.of<NavigationCubit>(context)
//                     .getNavBarItem(NavbarItem.home);
//               } else if (index == 1) {
//                 BlocProvider.of<NavigationCubit>(context)
//                     .getNavBarItem(NavbarItem.settings);
//               } else if (index == 2) {
//                 BlocProvider.of<NavigationCubit>(context)
//                     .getNavBarItem(NavbarItem.profile);
//               }
//             },
//           ),
//         );
//       },
//     );
//   }
// }
