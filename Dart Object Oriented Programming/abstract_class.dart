abstract class Student {
  void reading();
  void joiningClass();

  void playing() {
    print('Playing Call of Duty');
  }
}

abstract class ABC {}

class CSEStudent extends Student {

  @override
  void reading() {
    print('Reading some code');
  }

  @override
  void joiningClass() {
    print('Via google meet');
  }
}

class PharmacyStudent extends Student {
  @override
  void reading() {
    print('Reading chemistry');
  }

  @override
  void joiningClass() {
    print('In university');
  }

  @override
  void playing() {
    print('Football');
  }
}

class LawStudent implements Student, ABC {

  @override
  void joiningClass() {
    print('Law student join the class in person.');
  }

  @override
  void reading() {
    print('Reading Law Books.');
  }

  @override
  void playing() {
    print('Playing in the LawDepartment playground');
  }

}

void main() {
  CSEStudent csestudent = CSEStudent();
  csestudent.reading();
  csestudent.playing();
  csestudent.joiningClass();

  PharmacyStudent pharmacyStudent = PharmacyStudent();
  pharmacyStudent.reading();
  pharmacyStudent.playing();
  pharmacyStudent.joiningClass();

  LawStudent lawstudent = LawStudent();
  lawstudent.reading();
  lawstudent.playing();
  lawstudent.joiningClass();

}