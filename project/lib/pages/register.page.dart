import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _showPassword = false;
  bool _isChecked = false;
  bool _isEmailNotificationEnabled = false;
  bool _isPhoneNotificationEnabled = false;
  double fontSize = 12;

  @override
  Widget build(BuildContext context) {
    double value = 12;
    bool _isMaleChecked = false;
    bool _isFemaleChecked = false;

    return Container(
      color: Colors.transparent,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create an account'),
        ),
        drawer: const Drawer(),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 60,
                  left: 40,
                  right: 40,
                ),
                child: Expanded(
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        width: 128,
                        height: 128,
                        child: Image.asset("assets/images/logo.png"),
                      ),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          Container(
                            height: 40,
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Nome',
                                labelStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                              style: const TextStyle(fontSize: 20),
                              maxLength: 50, // Limitação de caracteres
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: 40,
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Data de Nascimento',
                                labelStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: 40,
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Telefone',
                                labelStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                              style: const TextStyle(fontSize: 20),
                              maxLength: 15, // Limitação de caracteres
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: 40,
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                labelText: 'E-mail',
                                labelStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                              ),
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: 40,
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              obscureText: !_showPassword,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Senha',
                                labelStyle: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                ),
                                suffixIcon: Container(
                                  width: 48,
                                  child: IconButton(
                                    icon: Icon(
                                      _showPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _showPassword = !_showPassword;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              style: const TextStyle(fontSize: 20),
                              maxLength: 20, // Limitação de caracteres
                            ),
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Gênero:'),
                                SizedBox(width: 20),
                                Checkbox(
                                  value: _isMaleChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isMaleChecked = value!;
                                    });
                                  },
                                  shape: CircleBorder(),
                                ),
                                Text('Masculino'),
                                SizedBox(width: 20),
                                Checkbox(
                                  value: _isFemaleChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _isFemaleChecked = value!;
                                    });
                                  },
                                  shape: CircleBorder(),
                                ),
                                Text('Feminino'),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          SwitchListTile(
                            title: const Text('E-mail'),
                            value: _isEmailNotificationEnabled,
                            onChanged: (bool value) {
                              setState(() {
                                _isEmailNotificationEnabled = value;
                              });
                            },
                          ),
                          const SizedBox(height: 20),
                          SwitchListTile(
                            title: const Text('Celular'),
                            value: _isPhoneNotificationEnabled,
                            onChanged: (bool value) {
                              setState(() {
                                _isPhoneNotificationEnabled = value;
                              });
                            },
                          ),
                          const SizedBox(height: 20),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: const [0.1, 1, 0.7, 0.1],
                                  colors: const [
                                    Color.fromARGB(255, 111, 46, 146),
                                    Color.fromARGB(255, 191, 113, 228),
                                    Color.fromARGB(255, 239, 218, 183),
                                    Color.fromARGB(255, 113, 185, 219),
                                  ],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Register",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Slider(
                      value: value,
                      min: 10,
                      max: 20,
                      onChanged: (double newValue) {
                        setState(() {
                          value = newValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
