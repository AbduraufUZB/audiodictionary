import 'package:audiodictionary/service/dictionary_app.dart';
import 'package:audiodictionary/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TranslatePage extends StatefulWidget {
  const TranslatePage({Key? key}) : super(key: key);

  @override
  State<TranslatePage> createState() => _TranslatePageState();
}

class _TranslatePageState extends State<TranslatePage> {
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.myAppBar("Translate"),
      body: Center(
        child: FutureBuilder(
          future: DictionaryService.getDictionary(),
          builder: (ctx, AsyncSnapshot snap) {
            if (!snap.hasData) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else if (snap.hasError) {
              return const Center(
                child: Text("ERROR"),
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          snap.data[0]["phonetics"][1]["text"],
                          style: const TextStyle(fontSize: 20),
                        ),
                        IconButton(
                          onPressed: () {
                            play(snap.data[0]["phonetics"][0]["audio"]);
                          },
                          icon: const Icon(Icons.volume_up_outlined, size: 25),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  play(String str) async {
    int result = await audioPlayer.play(str);
    if (result == 1) {

    }
  }
}
