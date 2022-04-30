import 'types.dart';
import 'package:lost/lost.dart';
import 'widgets.dart';
import 'package:sortero/sortero.dart';
Future<List<LinksCard>> filterAndSort(Map<String,dynamic> paramteters)async{
  List<Category> content = paramteters["content"];
  String searchQuery = paramteters["searchQuery"];
  List<LinksCard> allCards = [];
  //Populate all cards
  for(Category category in content){
    if(searchQuery.isNotEmpty){
      //Filter contents
      if(category.categoryName.data!.search(searchQuery) == false){
        category.links.removeWhere((link){
          if(link.itemName.data!.search(searchQuery) || link.link.search(searchQuery)){
            return false;
          }else{
            return true;
          }
        });
      }
      //Sort links
      category.links.bubbleSort(compare: (link){
          Link thisLink = link;
          return thisLink.itemName.data!.instancesOf(searchQuery);
        },
        reverseOrder: true,
      );
    }
  }
  //Sort Categories
  content.bubbleSort(compare: (category){
      int points = 0;
      Category thisCategory = category;
      //Category name
      points += thisCategory.categoryName.data!.instancesOf(searchQuery);
      for(Link link in thisCategory.links){
        //Link Name
        points += link.itemName.data!.instancesOf(searchQuery);
        //URL
        points += link.link.instancesOf(searchQuery);
      }
      return points;
    },
    reverseOrder: true,
  );
  //Widgetize categories
  for(Category category in content){
    if(category.links.isNotEmpty){
      allCards.add(LinksCard(category: category));
    }
  }
  return allCards;
}