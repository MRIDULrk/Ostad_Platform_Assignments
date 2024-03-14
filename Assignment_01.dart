class Media{

   play(){

     print('Playing Media');

  }
}

class Song extends Media{

  late String artist;
  @override
  play() {
    print('Playing song by $artist');
  }

}

void main(){

  Media playMedia = Media();
  playMedia.play();

  Song artistSong = Song();
  artistSong.artist='Mridul Ranjan';
  artistSong.play();

}