import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hex_alpha/hex_alpha.dart';
import 'package:pro_file/widgets.dart';
import 'package:translatable_text_field/translatable_text.dart';
import 'content.dart';
import 'functions.dart';
import 'package:flutter/services.dart';

//Generate the html css and js and host on Firebase
//https://www.youtube.com/watch?v=xJo7Mqse960
//Personal Profile Website
void main() async {
  //https://greymag.medium.com/flutter-orientation-lock-portrait-only-c98910ebd769
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  HomePage({ Key? key }) : super(key: key);
  final TextEditingController controller = TextEditingController();
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Language selectedLanguage = Languages.english;
  String searchQuery = "";
  @override
  void initState(){
    super.initState();
    widget.controller.addListener(() {
      if(searchQuery != widget.controller.text){
        setState(() {
          searchQuery = widget.controller.text;
        });
      }
    });
  }
  @override
  void dispose(){
    super.dispose();
    widget.controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){
          setState(() {
            if(selectedLanguage.languageName == Languages.english.languageName){
              setState(() {
                selectedLanguage = Languages.spanish;
              });
            }else{
              setState(() {
                selectedLanguage = Languages.english;
              });
            }
          });
        },
        child: Icon(
          Icons.translate,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const ProFileName(),
            SearchBar(
              controller: widget.controller,
            ),
            Expanded(
              child: FutureBuilder(
                //TODO: Sort and filter content using compute
                future: compute(filterAndSort,{
                  "content" : appContent(language: selectedLanguage),
                  "searchQuery" : searchQuery,
                  "selectedLanguage" : selectedLanguage,
                }),
                builder: (context,snapshot){
                  if(snapshot.connectionState == ConnectionState.done){
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Column(
                          children: [
                            const MyName(),
                            //Load all links cards below
                            ContentDisplayer(
                              allCards: snapshot.data as List<Widget>,
                            ),
                          ],
                        ),
                      ),
                    );
                  }else{
                    return const LoadingThingy();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ProFileName extends StatelessWidget {
  const ProFileName({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: hexAlpha("646464",0.5),
            offset: const Offset(0,7),
            blurRadius: 4,
          ),
        ],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: const Text(
        "Pro-File",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          fontFamily: "Marker",
        ),
      ),
    );
  }
}
class MyName extends StatelessWidget {
  const MyName({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 38,
            backgroundImage: NetworkImage("https://by3302files.storage.live.com/y4m9KxtoPfjCQJlSP2hkSHxG3796NMKNGArQRNs9BZ3VsPGClRRPkI-_Za7laUYM7A_DNi6MLFZkRDWKlJpxrzQnZC0w-w5sN9cc4QuwSeAePe_dhiWeOQEMtg98BFBUZqTeLdZMbN5gMiHygqqCgMLq3jbaIdEJl5pVpN1UWAv0sH-YaTJ1Xfq6mpHZiQSr6Eb?width=707&height=583&cropmode=none"),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Container(
              height: 76,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: hexAlpha("646464",0.5),
                    offset: const Offset(7,7),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Radamés J. Valentín Reyes",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}