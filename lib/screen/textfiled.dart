import 'package:flutter/material.dart';

class Textfiled extends StatefulWidget {
  const Textfiled({super.key});

  @override
  State<Textfiled> createState() => _TextfiledState();
}

class _TextfiledState extends State<Textfiled> {
  //creating controller
  final TextEditingController controller = TextEditingController();
  String password = '';
  var obscure = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Widget"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(32),
        children: [
          TextField(
            //it provide next functinality on keyboard
            textInputAction: TextInputAction.go,
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email Address",
              hintText: "example@gmail.com",
              prefixIcon: Icon(Icons.email),
              suffixIcon:
                  controller.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                        onPressed: () {
                          controller.clear();
                        },
                        icon: Icon(Icons.clear),
                      ),
            ),
          ),

          SizedBox(height: 12),

          TextField(
            //it provide next functinality on keyboard
            textInputAction: TextInputAction.go,
            onChanged: (value) {
              setState(() {
                password = value;
              });
              print(password);
            },
            //invisibility of the text
            obscureText: obscure,
            // controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Passowrd",
              errorText: "Password is weak",
              prefixIcon: Icon(Icons.password),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
                icon:
                    obscure
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
              ),
            ),
          ),

          SizedBox(height: 12),

          Text(password),
        ],
      ),
    );
  }
}
