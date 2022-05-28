part of '../view.dart';

class _SignInLogo extends StatelessWidget {
  const _SignInLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
              color: ColorManager.primary,
              borderRadius: BorderRadius.circular(AppSize.s12)),
          width: AppSize.s40,
          height: AppSize.s40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            AppStrings.welcome,
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        Text(
          AppStrings.signInToContinue,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ],
    );
  }
}
