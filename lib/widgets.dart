import 'package:flutter/material.dart';
import 'package:pro_file/types.dart';
import 'package:hex_alpha/hex_alpha.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({ 
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(!focusNode.hasFocus){
          focusNode.requestFocus();
        }
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
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
        ),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: Colors.black,
            ),
            Expanded(
              child: TextField(
                focusNode: focusNode,
                controller: widget.controller,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                onSubmitted: (text){
                  focusNode.unfocus();
                },
              ),
            ),
            GestureDetector(
              onTap: (){
                widget.controller.text = "";
              },
              child: const Icon(
                Icons.cancel,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class HorizontalRule extends StatelessWidget {
  const HorizontalRule({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: 1,
    );
  }
}
class LinksBox extends StatelessWidget {
  const LinksBox({ 
    Key? key,
    required this.links,
  }) : super(key: key);
  final List<Link> links;
  @override
  Widget build(BuildContext context) {
    List<Widget> allLinks = [];
    for(Link link in links){
      allLinks.add(GestureDetector(
        onTap: ()async{
          await launchUrl(Uri.parse(link.link));
        },
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15,
          ),
          child: Row(
            children: [
              const Text("- "),
              Expanded(
                child: link.itemName,
              ),
            ],
          ),
        ),
      ));
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: allLinks,
    );
  }
}
class LinksCard extends StatefulWidget {
  const LinksCard({ 
    Key? key,
    required this.category,
  }) : super(key: key);
  final Category category;

  @override
  State<LinksCard> createState() => _LinksCardState();
}

class _LinksCardState extends State<LinksCard> {
  bool dropDown = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          dropDown = !dropDown;
        });
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 10,
        ),
        padding: const EdgeInsets.all(10),
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
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: widget.category.categoryName,
                ),
                Icon(
                  dropDown == false ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                ),
              ],
            ),
            dropDown == false ? const SizedBox() : Column(
              children: [
                const HorizontalRule(),
                LinksBox(
                  links: widget.category.links,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class ContentDisplayer extends StatelessWidget {
  const ContentDisplayer({ 
    Key? key,
    required this.allCards,
  }) : super(key: key);
  final List<Widget> allCards;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: allCards,
    );
  }
}
class LoadingThingy extends StatelessWidget {
  const LoadingThingy({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.black),
      ),
    );
  }
}