class QuestionsModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String question;

  QuestionsModel({this.avatarUrl, this.name, this.datetime, this.question});

//Questions Items
  static final List<QuestionsModel> dummyData = [
    QuestionsModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
      name: "Laurent",
      datetime: "20:18",
      question:
          "Will vitamin D save my life? Should I really be taking four times the recommended daily dose?",
    ),
    QuestionsModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
      name: "Tracy",
      datetime: "19:22",
      question: "Is it okay to cleanse your body by fasting from time to time?",
    ),
    QuestionsModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
      name: "Claire",
      datetime: "14:34",
      question: "Can I trust my tap water?",
    ),
    QuestionsModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "Joe",
      datetime: "11:05",
      question: "How long am I contagious when I have the flu or a cold?",
    ),
    QuestionsModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
      name: "Mark",
      datetime: "09:46",
      question: "Will staring at a computer all day make me blind?",
    ),
    QuestionsModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
      name: "Williams",
      datetime: "08:15",
      question:
          " Is it true that 48 hours after starting antibiotics I can't infect someone else?",
    ),
    QuestionsModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
      name: "Joe",
      datetime: "11:05",
      question: "How long am I contagious when I have the flu or a cold?",
    ),
    QuestionsModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
      name: "Claire",
      datetime: "14:34",
      question: "Can I trust my tap water?",
    ),
    QuestionsModel(
      avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
      name: "Williams",
      datetime: "08:15",
      question:
          " Is it true that 48 hours after starting antibiotics I can't infect someone else?",
    ),
  ];
}
