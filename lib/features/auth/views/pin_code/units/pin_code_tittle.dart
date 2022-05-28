part of '../view.dart';

class _PinCodeTittle extends StatelessWidget {
  const _PinCodeTittle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'أكد رقم هاتفك',
        style: Theme.of(context).textTheme.displayLarge,
      ),
      Text(
        'لقد ارسلنا رمز التأكيد',
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(color: ColorManager.white),
      ),
    ]);
  }
}
