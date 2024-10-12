import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mooolatopensource/controller/forgetpassword/resetpassword_controller.dart';
import 'package:mooolatopensource/core/class/handlingdataview.dart';
import 'package:mooolatopensource/core/constant/color.dart';
import 'package:mooolatopensource/core/functions/validinput.dart';
import 'package:mooolatopensource/view/widget/auth/custombuttonauth.dart';
import 'package:mooolatopensource/view/widget/auth/customtextbodyauth.dart';
import 'package:mooolatopensource/view/widget/auth/customtextformauth.dart';
import 'package:mooolatopensource/view/widget/auth/customtexttitleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<ResetPasswordControllerImp>(
          builder: (controller) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Form(
                  key: controller.formstate,
                  child: ListView(children: [
                    const SizedBox(height: 20),
                    CustomTextTitleAuth(text: "35".tr),
                    const SizedBox(height: 10),
                    CustomTextBodyAuth(text: "35".tr),
                    const SizedBox(height: 15),
                    CustomTextFormAuth(
                      isNumber: false,
                      valid: (val) {
                        return validInput(val!, 3, 40, "password");
                      },
                      mycontroller: controller.password,
                      hinttext: "13".tr,
                      iconData: Icons.lock_outline,
                      labeltext: "19".tr,
                      // mycontroller: ,
                    ),
                    CustomTextFormAuth(
                      isNumber: false,

                      valid: (val) {
                        return validInput(val!, 3, 40, "password");
                      },
                      mycontroller: controller.repassword,
                      hinttext: "Re" + " " + "13".tr,
                      iconData: Icons.lock_outline,
                      labeltext: "19".tr,
                      // mycontroller: ,
                    ),
                    CustomButtomAuth(
                        text: "33".tr,
                        onPressed: () {
                          controller.goToSuccessResetPassword();
                        }),
                    const SizedBox(height: 40),
                  ]),
                ),
              ))),
    );
  }
}
