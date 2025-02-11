import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:viewall/models/photo_model.dart';
import 'package:http/http.dart' as http;
import 'package:viewall/widget/widget.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  List<PhotoModel> photos =[];
  TextEditingController searchcontroller = new TextEditingController();
  bool search = false;
  getSearchWallpaper(String searchQuery)async{
    await http.get(Uri.parse("https://api.pexels.com/v1/search?query=$searchQuery&per_page=30"), headers:{"Authorization":"jMkYtitBaz4eZ1KL4UK5encynlwNpjxkMyuEB5S0CgYZQudzPy3Cpk8O"
    }).then((value) {
      Map<String, dynamic> jsonData = jsonDecode(value.body);
      jsonData["photos"].forEach((element){
        PhotoModel photosModel = new PhotoModel();
        photosModel = PhotoModel.fromMap(element);
        photos.add(photosModel);
      });
      setState(() {
        search = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Viewall",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            Center(
              child: Text("Search", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'WixMadeforText'
              ),),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFececf8),
                borderRadius: BorderRadius.circular(10),),
              child: TextField(
                controller: searchcontroller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: GestureDetector(
                    onTap: (){
                      getSearchWallpaper(searchcontroller.text);
                    },
                    child: search? GestureDetector(
                      onTap: (){
                        photos = [];
                        search = false;
                        setState(() {

                        });
                      },
                      child: Icon(Icons.close,
                        color: Color.fromARGB(255, 84, 87, 93),),
                    ):
                    Icon(Icons.search_outlined,
                      color: Color.fromARGB(255, 84, 87, 93),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(child: wallpaper(photos, context))
            
          ],
        ),
      ),
      

    );
  }
}
