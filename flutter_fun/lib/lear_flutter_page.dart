import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitchOn = false;
  bool isCheckboxTicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("teub");
            },
            icon: const Icon(Icons.fork_right_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/cat.jpg"),
            const SizedBox(
              height: 10,
            ),
            const Divider(color: Colors.black38),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.amberAccent,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Test text",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitchOn ? Colors.cyan : Colors.red,
              ),
              onPressed: () {
                debugPrint("Elevated press");
              },
              child: const Text("Elevated coucou"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined press");
              },
              child: const Text("Outlined coucou"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text press");
              },
              child: const Text("Text coucou"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("Tapped Row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.account_balance_rounded,
                    color: Colors.lightBlue,
                  ),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitchOn,
                onChanged: (bool newValue) {
                  setState(() {
                    isSwitchOn = newValue;
                  });
                }),
            Checkbox(
                value: isCheckboxTicked,
                onChanged: (bool? isTicked) {
                  setState(() {
                    isCheckboxTicked = isTicked!;
                  });
                }),
            Container(
              height: 50.0,
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: const EdgeInsets.all(0.0),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Gradient Button",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
            Image.network(
                "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fthecaninebuddy.com%2Fwp-content%2Fuploads%2F2021%2F08%2Fcrying-cat-meme.jpg&f=1&nofb=1")
          ],
        ),
      ),
    );
  }
}
