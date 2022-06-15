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
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(14),
            child: Column(
              children: const [
                EditingTextSampel(),
              ],
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
                        title: const Text('Dialog Edit'),
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
                    });
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
              child: const Text('Cek Input 1'),
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
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        children: const [
          TextField(
            decoration: InputDecoration(
              labelText: 'Sampel Input 2',
              hintText: 'Password',
            ),
          )
        ],
      ),
    );
  }
}
