import 'package:audiodictionary/core/constants/color_const.dart';
import 'package:audiodictionary/core/constants/url_const.dart';
import 'package:audiodictionary/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar("Dictionary app"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: "Input Word",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                UrlConst.extraUrl = _controller.text;
                Navigator.pushNamed(context, "/tr");
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: ColorConst.kCyan,
                ),
                height: MediaQuery.of(context).size.height * 0.1,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Translate",
                    style: TextStyle(color: ColorConst.kWhite, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
