part of '../view.dart';

class _PinCodeButtons extends StatelessWidget {
  const _PinCodeButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MainButton(
          width: sizeFromWidth(context, 3),
          height: 40,
          onPressed: () {},
          text: 'تأكيد',
        ),
        MainButton(
          primary: ColorManager.darkOrange,
          width: sizeFromWidth(context, 3),
          height: 40,
          onPressed: () {},
          text: 'رجوع',
        ),
      ],
    );
  }
}
