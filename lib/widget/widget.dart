import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:viewall/models/photo_model.dart';

Widget wallpaper(List<PhotoModel> listPhotos, BuildContext context){
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      padding: EdgeInsets.all(4),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6,
      crossAxisSpacing: 6,
      children: listPhotos.map((PhotoModel photosModel){
        return GridTile(
            child: Hero(
                tag: photosModel.src!.portrait!,
                child: Container(
                  child: CachedNetworkImage(
                      imageUrl: photosModel.src!.portrait!,
                  fit: BoxFit.cover,
                  ),
                )));
      }).toList(),
    ),
  );
}