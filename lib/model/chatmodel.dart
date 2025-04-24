class Chatmodel {
  final String name;
  final String message;
  final String time;
  final String avatar;

  Chatmodel({
    required this.name,
    required this.message,
    required this.time,
    required this.avatar,
  });
}

List<Chatmodel> dummyData = [
  Chatmodel(
    name: 'Jessica',
    message: 'Hey, how are you doing?',
    time: '10:30 AM',
    avatar: 'assets/pexels-sebastiaan9977-1097456.jpg',
  ),
  Chatmodel(
    name: 'Michael',
    message: 'Let\'s grab lunch tomorrow.',
    time: '11:15 AM',
    avatar: 'assets/pexels-sebastiaan9977-1097456.jpg',
  ),
  Chatmodel(
    name: 'Sarah',
    message: 'Can you send me the report?',
    time: '12:00 PM',
    avatar: 'assets/pexels-sebastiaan9977-1097456.jpg',
  ),
  Chatmodel(
    name: "John Doe",
    message: "Hey, how are you?",
    time: "10:00 AM",
    avatar: "assets/pexels-sebastiaan9977-1097456.jpg",
  ),
  Chatmodel(
    name: "Jane Smith",
    message: "Let's catch up later.",
    time: "10:05 AM",
    avatar: "assets/pexels-sebastiaan9977-1097456.jpg",
  ),
];
