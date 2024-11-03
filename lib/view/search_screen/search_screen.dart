import 'package:flutter/material.dart';
import 'package:news_app_main/controller/search_screen_controller.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final searchScreenProvider = context.watch<SearchScreenController>();
    
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text(
      //     "Newsly",
      //     style: TextStyle(color: Colors.grey, fontSize: 25, fontWeight: FontWeight.w600),
      //   ),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchBar(
                controller: controller,
                leading: IconButton(
                  onPressed: () {
                    context.read<SearchScreenController>().onSearch(controller.text);
                  },
                  icon: Icon(Icons.search, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: Builder(builder: (context) {
                if (searchScreenProvider.isLoading) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                  );
                } else if (searchScreenProvider.newsArticles.isEmpty) {
                  return Center(
                    child: Text(
                      "News not found",
                      style: TextStyle(color: Colors.grey),
                    ),
                  );
                } else {
                  return ListView.separated(
                    itemBuilder: (context, index) => Container(
                      child: ListTile(
                        selectedColor: Colors.grey.shade50,
                        title: Column(
                          children: [
                            Text(
                              searchScreenProvider.newsArticles[index].title.toString(),
                              
                              style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.bold,fontSize: 20),
                            ),
                            Text( searchScreenProvider.newsArticles[index].description.toString(),
                              
                              style: TextStyle(color: Colors.grey.shade300,fontSize: 17),
                              
                              ),

                              Image.network(searchScreenProvider.newsArticles[index].urlToImage.toString())
                          ],
                        ),
                        
                      ),
                    ),
                    separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        color: Colors.grey.shade600, 
                        thickness: 1, 
                        height: 30, 
                      ),
                    ),
                    itemCount: searchScreenProvider.newsArticles.length,
                  );
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
