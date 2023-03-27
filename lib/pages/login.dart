import 'package:flutter/material.dart';
import 'package:fontcodes/providers/login_form_provider.dart';
import 'package:fontcodes/ui/input_decorations.dart';
import 'package:fontcodes/widgets/login_background.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 500,
              ),
              Container(
                child: ChangeNotifierProvider(
                  create: (_) => LoginFormProvider(),
                  child: _LoginForm(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Form(
        key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                  hintText: '',
                  labelText: 'Usuario',
                  prefixIcon: Icons.person_rounded,
                ),
                onChanged: (value) => loginForm.email = value,
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = new RegExp(pattern);

                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'El correo es incorrecto';
                },
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecorations.authInputDecoration(
                  hintText: '',
                  labelText: 'Contraseña',
                  prefixIcon: Icons.lock,
                  sufixIcon: Icons.remove_red_eye_outlined,
                ),
                onChanged: (value) => loginForm.password = value,
                validator: (value) {
                  if (value != null && value.length >= 6) return null;
                  return 'La contraseña debe tener 6 caracteres como minimo';
                },
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: Row(
                children: [
                  Checkbox(
                    value: false,
                    activeColor: const Color(0xffE60A0F),
                    onChanged: (value) {
                      value = true;
                    },
                  ),
                  const Text('Recordarme')
                ],
              ),
            ),
            const SizedBox(height: 40),
            MaterialButton(
              height: 66,
              minWidth: 327,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Color(0xffE60A0F),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: const Text(
                  'INICIAR SESION',
                  style: TextStyle(
                    color: Color(0xffF0F0F0),
                  ),
                ),
              ),
              onPressed: () {
                if (!loginForm.isValidForm()) return;

                Navigator.pushReplacementNamed(context, 'home');
              },
            ),
            const SizedBox(height: 44),
            const Text(
              '¿Has olvidado tu contraseña?',
              style: TextStyle(
                color: Color(0xff707070),
              ),
            )
          ],
        ),
      ),
    );
  }
}
