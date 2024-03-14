void main() {
  printer();
}

void printer()
{
  try{
    printHeadline();
  }
  on machineException{
    print('Something Went Wrong in Machine');
  }
  on customException{
    print('Something Went Wrong in CustomDevice');

  }
  catch(e){
    print('Something Went Wrong!!! : ${e.toString()}');
  }
  finally{
    print('Code from finally will Must be executed!!');

  }

  printContent();
}
void printHeadline(){
 // throw Exception('Printing Exception');
  //throw customException();
  throw machineException();
  print('Printing Headline');


}
void printContent() {

    print('Printing Content');

}

class customException implements Exception{

      @override
  String toString() {
   return 'This is the custom exception';
  }

}

class machineException implements Exception {

  @override
  String toString() {
    return 'This is the Machine exception';
  }

}

