import 'abstraction.dart';

void main() {
  AcRemote remote = AcRemote();
  remote.increaseTemp();
  print(remote.temp);

  remote.increaseTemp();
  print(remote.temp);

  remote.increaseTemp();
  print(remote.temp);

  remote.decrementTemp();
  print(remote.temp);
}