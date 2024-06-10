class Option {
  String title;
  bool isChosen;
  bool isTrue;

  Option(this.title, this.isChosen, this.isTrue);
}

class Question {
  int id;
  String question;
  Option option1;
  Option option2;
  Option option3;
  Option option4;

  Question(this.id, this.question, this.option1, this.option2, this.option3, this.option4);
}

List<Question> allQuestions = [
  Question(
    1,
    "Who invented C++ ?",
    Option("Dennis Ritchie", false, false),
    Option("Ken Thompson", false, false),
    Option("Brian Kernighan", false, false),
    Option("Bjarne Stroustrup", false, true),
  ),
  Question(
    2,
    "Which of the following is the correct for including a user defined header files in C++ ?",
    Option("#include [userdefined]", false, false),
    Option("#include “userdefined”", false, true),
    Option("#include <userdefined.h>", false, false),
    Option("#include <userdefined>", false, false),
  ),
  Question(
    3,
    "Which of the following is used for comments in C++ ?",
    Option("/* comment */", false, false),
    Option(" // comment */", false, false),
    Option("// comment", false, false),
    Option("both // comment or /* comment */", false, true),
  ),
  Question(
    4,
    "Which of the following is a correct identifier in C++ ?",
    Option(" VAR_1234", false, true),
    Option(" `\$`var_name", false, false),
    Option("7VARNAME", false, false),
    Option(" 7var_name", false, false),
  ),
  Question(
    5,
    "Which of the following is not a type of Constructor in C++ ?",
    Option("Default constructor", false, false),
    Option("Parameterized constructor", false, false),
    Option("Copy constructor", false, false),
    Option("Friend constructor", false, true),
  ),
  Question(
    6,
    "What is the size of wchar_t in C++ ?",
    Option("Based on the number of bits in the system", false, true),
    Option("2 or 4", false, false),
    Option("4", false, false),
    Option("2", false, false),
  ),
  Question(
    7,
    "Which keyword is used to define the macros in C++ ?",
    Option("#macro", false, false),
    Option("#define", false, true),
    Option("macro", false, false),
    Option("define", false, false),
  ),
  Question(
    8,
    "What is Inheritance in C++ ?",
    Option("Deriving new classes from existing classes", false, true),
    Option("Overloading of classes", false, false),
    Option("Classes with same names", false, false),
    Option("Wrapping of data into a single class", false, false),
  ),
  Question(
    9,
    "Which of the following symbol is used to declare the preprocessor directives in C++ ?",
    Option("%", false, false),
    Option("^", false, false),
    Option("#", false, true),
    Option("*", false, false),
  ),
  Question(
    10,
    "Which of the following constructors are provided by the C++ compiler if not defined in a class ?",
    Option("Copy constructor", false, false),
    Option("Default constructor", false, false),
    Option("Assignment constructor", false, false),
    Option("All of the mentioned", false, true),
  ),
];

