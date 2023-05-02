import 'package:flutter/material.dart';
import 'package:tic_tac_toe/responsive/responsive.dart';
import 'package:tic_tac_toe/widgets/custom_button.dart';
import 'package:tic_tac_toe/widgets/custom_text.dart';
import 'package:tic_tac_toe/widgets/custom_text_field.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = 'create-room';
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _namedController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _namedController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(1, 1, 1, 1),
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(shadows: [
                Shadow(
                  blurRadius: 40,
                  color: Color.fromARGB(255, 64, 176, 87),
                )
              ], text: 'Create Room', foontSize: 60),
              SizedBox(height: size.height * 0.05),
              CustomTextField(
                  controller: _namedController,
                  hintText: 'Enter your Game Name'),
              SizedBox(height: size.height * 0.045),
              Container(
                width: 110,
                height: 40,
                child: CustomButton(
                  onTap: () {},
                  text: 'Cool',
                  color: null,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
