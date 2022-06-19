import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:telegram/config/init/navigation/navigator.dart';
import 'package:telegram/core/constants/colors/color_const.dart';
import 'package:telegram/core/constants/font/font_style.dart';
import 'package:telegram/core/extensions/context_extension.dart';
import 'package:telegram/widgets/appbarwidget/appbarwidget.dart';

class AuthView extends StatefulWidget {
  AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  TextEditingController phoneController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  String initialCountry = 'US';

  PhoneNumber number = PhoneNumber(isoCode: 'US');

  bool _syncContact = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kBackground,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              AppBarWidget(
                leading: InkWell(child: Text("Cancel", style: FStyles.headline3blue)),
                trailing: InkWell(child: Text("Next", style: FStyles.headline3blue), onTap: (){
                  NavigationService.instance.pushNamedAndRemoveUntil('/mainview');
                  // Navigator.pushNamedAndRemoveUntil(context, '/mainview', (route) => false);
                },)
              ),

              SizedBox(
                height: context.h * 0.04,
              ),
              Text(
                "Your Phone",
                style: FStyles.headline1s,
              ),
              SizedBox(
                height: context.h * 0.02,
              ),
              Text(
                "Please confirm your country code\nand enter your phone number.",
                textAlign: TextAlign.center,
                style: FStyles.headline3s,
              ),
              SizedBox(height: context.h * 0.1),
              Form(
                key: formKey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InternationalPhoneNumberInput(
                        hintText: "Your phone number",
                        onInputChanged: (PhoneNumber number) {
                          print(number.phoneNumber);
                        },
                        onInputValidated: (bool value) {
                          print(value);
                        },
                        selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
                        ignoreBlank: false,
                        autoValidateMode: AutovalidateMode.disabled,
                        selectorTextStyle:
                            TextStyle(color: ColorConst.kBackgroundDark),
                        initialValue: number,
                        textFieldController: phoneController,
                        formatInput: false,
                        keyboardType: const TextInputType.numberWithOptions(
                            signed: true, decimal: true),
                        inputBorder: const OutlineInputBorder(),
                        
                        onSaved: (PhoneNumber number) {
                          print("On Saved: $number");
                          debugPrint("$initialCountry");
                        },
                      ),

                      SwitchListTile.adaptive(
                          title: Text(
                            "Sync Contacts",
                            style: FStyles.headline3bold,
                          ),
                          value: _syncContact,
                          onChanged: (bool value) {
                            setState(() {
                              _syncContact = value;
                            });
                          })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
