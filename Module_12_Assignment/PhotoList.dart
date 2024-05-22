import 'dart:convert';

import 'package:apicallingphotogallery/photo_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PhotoList extends StatefulWidget {
   const PhotoList({super.key});


  @override
  State<PhotoList> createState() => _PhotoListState();
}

class _PhotoListState extends State<PhotoList> {

  bool _getPhotolistinProgress = false;

  List<PhotoModel> photodetailsList =[];

  @override
  void initState() {
    super.initState();
    _getPhotoList();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery App'),
      ),

      body: Visibility(
        visible: _getPhotolistinProgress == false,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),

        child: ListView.separated(
          itemCount: photodetailsList.length,
          itemBuilder: (context, index) {
            return _buildPhotoItem(photodetailsList[index]);
          },
          separatorBuilder: (_, __) => const Divider(),
        ),
      ),
    ) ;
  }

  Future<void> _getPhotoList() async{
    _getPhotolistinProgress = true;
    setState(() {});

    const String PhotoURL='https://jsonplaceholder.typicode.com/photos';
    Uri uri = Uri.parse(PhotoURL);
    Response response = await get(uri);


    print(response.statusCode);
    //print(response.body);

    if(response.statusCode == 200){

        final decodedData = jsonDecode(response.body);

        final jsonProductList = decodedData[1];

        for (final json in jsonProductList) {
          PhotoModel photoModel = PhotoModel.fromJson(json);
          photodetailsList.add(photoModel);
        }

    }


    _getPhotolistinProgress =false;
    setState(() {});


  }


  Widget _buildPhotoItem(PhotoModel photoModel) {
    return ListTile(
      leading: Image.network(
        '${photoModel.url}',
        height: 60,
        width: 60,
      ),
      title: Text('${photoModel.title}'),
    );
  }


}


















