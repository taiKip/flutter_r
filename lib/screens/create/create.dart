import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  // submit handler
  void handleSubmit() {
    if (_nameController.text.trim().isEmpty) {
      print('name must not be empty');
      return;
    }

    if (_sloganController.text.trim().isEmpty) {
      print('name must not be empty');
      return;
    }
    print(_nameController.text);
    print(_sloganController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledTitle('Your Characters'), centerTitle: true),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            //welcome message
            Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
            Center(child: const StyledHeading('Welcome, new player.')),
            Center(
              child: const StyledText(
                'Create a name & slogan for your character.',
              ),
            ),
            const SizedBox(height: 30),

            //input for name and slogan
            TextField(
              controller: _nameController,
              style: GoogleFonts.kanit(
                textStyle: Theme.of(context).textTheme.bodyMedium,
              ),
              cursorColor: AppColors.textColor,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2),
                label: StyledText('Character name'),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _sloganController,
              style: GoogleFonts.kanit(
                textStyle: Theme.of(context).textTheme.bodyMedium,
              ),
              cursorColor: AppColors.textColor,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.chat),
                label: StyledText('Character slogan'),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: StyledButton(
                onPressed: handleSubmit,
                child: const StyledHeading('Create Character'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
