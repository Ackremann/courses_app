part of'../view.dart';
class _PinCode extends StatelessWidget {
  const _PinCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
      child: PinCodeTextField(
        textStyle: Theme.of(context).textTheme.displayMedium,
        length: 5,
        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.underline,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          fieldWidth: 40,
          inactiveFillColor: ColorManager.background,
          inactiveColor: ColorManager.lightGrey,
          selectedFillColor: ColorManager.background,
          selectedColor: ColorManager.primary,
          activeFillColor: ColorManager.background,
        ),
        animationDuration: const Duration(milliseconds: 300),
        // backgroundColor: Colors.blue.shade50,
        enableActiveFill: true,
        // errorAnimationController: errorController,
        // controller: textEditingController,
        onCompleted: (v) {},
        onChanged: (value) {},
        beforeTextPaste: (text) {
          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
          //but you can show anything you want here, like your pop up saying wrong paste format or etc
          return true;
        },
        appContext: context,
      ),
    );
  }
}