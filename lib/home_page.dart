import 'thanks_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Nos ajude a Melhorar !!!',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Deixe o seu Feedback',
                  style: TextStyle(fontSize: 25),
                ),
                TextFormField(
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return "Não pode ser vazio!";
                    }
                    if (value.length < 5) {
                      return "Quantidade de caracteres muito curto!";
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                    errorStyle: const TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  maxLines: 14,
                ),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ThanksPage(),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Enviar',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
