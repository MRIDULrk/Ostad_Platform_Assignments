class PhotoModel {
  int? albumID;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;


  PhotoModel.fromJson(Map<String, dynamic> json) {
    albumID = json['albumID'];
    id = json['id'];
    title = json['title'];
    url = json['url'];
    thumbnailUrl = json['thumbnailUrl'];


  }
}