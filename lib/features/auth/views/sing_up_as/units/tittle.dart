part of '../view.dart';

class _SignUpAsTittle extends StatelessWidget {
  const _SignUpAsTittle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.signUp,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(AppStrings.as,
              style: Theme.of(context).textTheme.displayMedium),
        ),
      ],
    );
  }
}
