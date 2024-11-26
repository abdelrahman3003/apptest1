import 'package:apptest1/core/utils/app_colors.dart';
import 'package:apptest1/core/utils/app_styles.dart';
import 'package:apptest1/view/visitor_details_view.dart';
import 'package:apptest1/view/widget/register_button.dart';
import 'package:apptest1/gen/assets.gen.dart';
import 'package:apptest1/view/widget/app_textform_field.dart';
import 'package:apptest1/view/widget/register_model.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

bool nameValid = true;
bool emailValid = true;
bool dateValid = true;
bool timeValid = true;

bool idValid = true;
final TextEditingController nameContrller = TextEditingController();
final TextEditingController emaiContrller = TextEditingController();
final TextEditingController idContrller = TextEditingController();
final TextEditingController dateContrller = TextEditingController();
final TextEditingController timeContrller = TextEditingController();
final TextEditingController phoneContrller = TextEditingController();
final TextEditingController reasonsContrller = TextEditingController();

class _RegisterBodyState extends State<RegisterBody> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    RegisterModel registerModel = RegisterModel();
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(80),
        ),
      ),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 20, vertical: screenHeight * .05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Visitor Info",
                    style: AppStyles.style18font400black(context),
                  ),
                  const Spacer(),
                  Text(
                    "Required field",
                    style: AppStyles.style12font400black(context),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.thirdColor, // اللون الأساسي للـ Container
                  borderRadius:
                      BorderRadius.circular(15), // يمكنك تعديل الشكل حسب الحاجة
                  boxShadow: [
                    BoxShadow(
                      color:
                          Colors.black.withOpacity(0.1), // لون الظل مع شفافية
                      spreadRadius: .3, // انتشار الظل
                      blurRadius: 20, // درجة ضبابية الظل
                      offset: const Offset(0, 1), // اتجاه الظل (للأسفل هنا)
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    AppTextformField(
                      icon: Assets.icons.mdiUser,
                      title: "name",
                      subtitle: "Enter your name",
                      controller: nameContrller,
                      isValid: nameValid,
                    ),
                    AppTextformField(
                      icon: Assets.icons.phone,
                      title: "Phone",
                      subtitle: "Enter your phone",
                      keyboardType: TextInputType.phone,
                    ),
                    AppTextformField(
                      icon: Assets.icons.mail,
                      title: "Email",
                      subtitle: "Enter your email",
                      controller: emaiContrller,
                      isValid: emailValid,
                    ),
                    AppTextformField(
                      icon: Assets.icons.visitDate,
                      title: "Expected Visit Date *",
                      subtitle: "Click to pick a date",
                      controller: dateContrller,
                      isValid: dateValid,
                      onTap: () {
                        pickDate(context, dateContrller);
                      },
                    ),
                    AppTextformField(
                      icon: Assets.icons.visitTime,
                      controller: timeContrller,
                      title: "Expected Visit Time",
                      subtitle: "Click to pick a time",
                      isValid: timeValid,
                      onTap: () {
                        pickTime(context, timeContrller);
                      },
                    ),
                    AppTextformField(
                      icon: Assets.icons.idNumber,
                      title: "ID Number",
                      subtitle: "Enter your ID Number",
                      controller: idContrller,
                      isValid: idValid,
                      keyboardType: TextInputType.number,
                    ),
                    AppTextformField(
                        icon: Assets.icons.bxsMessage,
                        title: "Visit Reason",
                        subtitle: "Enter your Visit Reason"),
                    const SizedBox(height: 40),
                    SizedBox(
                        width: double.infinity,
                        child: RegisterButton(
                          text: "Next Step",
                          onPressed: () {
                            putData(registerModel: registerModel);
                            if (validator()) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VisitorDetailsView(
                                        registerModel: registerModel),
                                  ));
                              restData();
                            }
                            setState(() {});
                          },
                        )),
                    const SizedBox(height: 10),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool validator() {
    if (nameContrller.text.isEmpty) {
      return nameValid = false;
    }
    if (emaiContrller.text.isEmpty) {
      return emailValid = false;
    }
    if (dateContrller.text.isEmpty) {
      return dateValid = false;
    }
    if (timeContrller.text.isEmpty) {
      return timeValid = false;
    }
    if (idContrller.text.isEmpty) {
      return idValid = false;
    }

    return true;
  }
}

restData() {
  nameValid = true;
  emailValid = true;
  idValid = true;
  dateValid = true;
  timeValid = true;
}

Future<void> pickDate(
    BuildContext context, TextEditingController controller) async {
  DateTime? selectedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  );

  if (selectedDate != null) {
    controller.text = "${selectedDate.toLocal()}".split(' ')[0];
  }
}

Future<void> pickTime(
    BuildContext context, TextEditingController controller) async {
  TimeOfDay? selectedTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );

  if (selectedTime != null) {
    controller.text = selectedTime.format(context);
  }
}

void putData({required RegisterModel registerModel}) {
  registerModel.title = nameContrller.text;
  registerModel.email = emaiContrller.text;
  registerModel.id = idContrller.text;
  registerModel.date = dateContrller.text;
  registerModel.time = timeContrller.text;
  registerModel.phone = phoneContrller.text;
}
