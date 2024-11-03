import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_app_main/model/news_res_model.dart';

class SearchScreenController with ChangeNotifier{
  Newsresmodel? newsResModel;
  List<Article> newsArticles = [];
  bool isLoading = false;
  Future<void> onSearch(String keyword) async {
    isLoading = true;
    notifyListeners();
    final url = Uri.parse("https://newsapi.org/v2/everything?q=$keyword&apiKey=198dc3f3ad6141d18667e9a80db38c59");
    try{
 var res = await http.get(url);
 if(res.statusCode == 200){
 newsResModel = newsresmodelFromJson(res.body);
 if(newsResModel!=null){
  newsArticles = newsResModel!.articles ?? [];
 }
 }
    }catch(e){
print(e);
    }
    isLoading = false;
    notifyListeners();  
  }
}