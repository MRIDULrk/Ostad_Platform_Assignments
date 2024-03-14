/// Abstraction
/// Hiding the complexity
/// import this file to "abstraction_main.dart"

class AcRemote {
  int _temp = 0;
  String sign='';

  void increaseTemp() {
     sign='positive';
    _awakeTheRemoteSystem();
  }

  void decrementTemp() {

    sign='negative';
    _awakeTheRemoteSystem();
  }

  void _awakeTheRemoteSystem() {
    print('awake system');
    _callTheArduino();
  }

  void _callTheArduino() {
    print('execute command');
    _communicateWithAC();
  }

  void _communicateWithAC() {
    print('Communicating with AC');
    _getResponse();
  }

  void _getResponse() {
    if(sign=='positive'){   //sign is +ve for increasing temperature

      _temp = _temp + 1;
      print('Ac temperature is increased');

    }
    else if(sign=='negative')  //sign is -ve for decreasing temperature
      {
        _temp = _temp - 1;
        print('Ac temperature is decreased');

      }
    else{

      sign='neutral';


    }

  }

  int get temp {
    return _temp;
  }
}