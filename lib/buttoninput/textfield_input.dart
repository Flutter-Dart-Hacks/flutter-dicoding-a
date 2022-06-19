import 'package:flutter/material.dart';

class TextfieldInputs extends StatelessWidget {
  const TextfieldInputs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Field Ex1'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          )
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Scrollbar(
          thumbVisibility: true,
          trackVisibility: true,
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  EditingTextSampel(),
                  EditingTextCtrl(),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Pengenalan Switch Widget'),
                  SwitchWidgetSampel(),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Sampel Radio Button'),
                  RadioButtonSampel(),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Sampel Checkbox Button'),
                  SizedBox(
                    height: 20,
                  ),
                  CheckboxSampels(),
                  Text('Sampel Image'),
                  SizedBox(
                    height: 20,
                  ),
                  ImageSampel(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EditingTextSampel extends StatefulWidget {
  const EditingTextSampel({Key? key}) : super(key: key);

  @override
  State<EditingTextSampel> createState() => _EditingTextSampelState();
}

class _EditingTextSampelState extends State<EditingTextSampel> {
  String _nameOrang = '';
  String _nameOrangFinal = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: 'Sampel Input 1',
              hintText: 'Username',
            ),
            onChanged: (String value) {
              setState(() {
                _nameOrang = value;
              });
            },
            onSubmitted: (String finalValue) {
              setState(() {
                _nameOrangFinal = finalValue;
              });
            },
          ),
          const SizedBox(
            height: 4,
          ),
          Align(
            alignment: Alignment.topRight,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Dialog Controller Input'),
                      content: Text(
                          'Halo si nama orang $_nameOrang dan final nama orang $_nameOrangFinal'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Yes'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Tidak',
                            style: TextStyle(color: Colors.red),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
              child: const Text('Submit Input 2'),
            ),
          )
        ],
      ),
    );
  }
}

class EditingTextCtrl extends StatefulWidget {
  const EditingTextCtrl({Key? key}) : super(key: key);

  @override
  State<EditingTextCtrl> createState() => _EditingTextCtrlState();
}

class _EditingTextCtrlState extends State<EditingTextCtrl> {
  TextEditingController editingControllers = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    editingControllers.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          // Input tipe password
          // https://stackoverflow.com/questions/52111853/how-to-add-a-password-input-type-in-flutter-makes-the-password-user-input-is-not
          TextField(
              obscureText: false,
              enableSuggestions: false,
              autocorrect: false,
              autofillHints: const ['password'],
              controller: editingControllers,
              decoration: const InputDecoration(
                labelText: 'Sampel Input 2',
                hintText: 'Password',
              ),
              keyboardType: TextInputType.visiblePassword),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topRight,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Dialog Edit'),
                        content: Text(
                            'Halo si nama orang ${editingControllers.text} dan final nama orang ${editingControllers.text}'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Yes'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Tidak',
                              style: TextStyle(color: Colors.red),
                            ),
                          )
                        ],
                      );
                    });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('Cek Input Ctrl'),
            ),
          )
        ],
      ),
    );
  }
}

class SwitchWidgetSampel extends StatefulWidget {
  const SwitchWidgetSampel({Key? key}) : super(key: key);

  @override
  State<SwitchWidgetSampel> createState() => _SwitchWidgetSampelState();
}

class _SwitchWidgetSampelState extends State<SwitchWidgetSampel> {
  bool switchON = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      child: Column(
        children: [
          const Text('Switch On Of'),
          Switch(
            value: switchON,
            onChanged: (bool isValueOk) {
              setState(() {
                switchON = isValueOk;
              });

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content:
                      Text(switchON ? 'IsValue OK true' : 'IsValue OK false'),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RadioButtonSampel extends StatefulWidget {
  const RadioButtonSampel({Key? key}) : super(key: key);

  @override
  State<RadioButtonSampel> createState() => _RadioButtonSampelState();
}

class _RadioButtonSampelState extends State<RadioButtonSampel> {
  String? languageProgram = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // Dokumentasi ListTile
          // https://api.flutter.dev/flutter/material/ListTile-class.html
          ListTile(
            leading: Radio(
              value: 'Dart',
              groupValue: languageProgram,
              onChanged: (String? stringvalue) {
                if (stringvalue != null) {
                  setState(() {
                    languageProgram = stringvalue;
                  });
                  showSnackbar();
                }
              },
            ),
            title: const Text('Dart'),
          ),
          ListTile(
            leading: Radio(
              value: 'Kotlin',
              groupValue: languageProgram,
              onChanged: (String? stringvalue) {
                if (stringvalue != null) {
                  setState(() {
                    languageProgram = stringvalue;
                  });
                  showSnackbar();
                }
              },
            ),
            title: const Text('Kotlin'),
          ),
          ListTile(
            leading: Radio(
              value: 'JavaScript',
              groupValue: languageProgram,
              onChanged: (String? stringvalue) {
                if (stringvalue != null) {
                  setState(() {
                    languageProgram = stringvalue;
                  });
                  showSnackbar();
                }
              },
            ),
            title: const Text('JavaScript'),
          )
        ],
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$languageProgram dipilih'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}

class CheckboxSampels extends StatefulWidget {
  const CheckboxSampels({Key? key}) : super(key: key);

  @override
  State<CheckboxSampels> createState() => _CheckboxSampelsState();
}

class _CheckboxSampelsState extends State<CheckboxSampels> {
  bool isOkSetuju = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ListTile(
            leading: Checkbox(
              value: isOkSetuju,
              onChanged: (bool? isOkValue) {
                if (isOkValue != null) {
                  setState(() {
                    isOkSetuju = isOkValue;
                    print(isOkSetuju);
                  });
                }
              },
            ),
            title: const Text('Setuju atau Tidak ?'),
          )
        ],
      ),
    );
  }
}

class ImageSampel extends StatelessWidget {
  const ImageSampel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Center(
        child: Image.network(
          'https://picsum.photos/200/300',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
