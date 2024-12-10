class Message {
  final String doctorName;
  final String lastMessage;
  final String timestamp;
  final String avatarUrl;
  final bool isSupport;

  const Message({
    required this.doctorName,
    required this.lastMessage,
    required this.timestamp,
    required this.avatarUrl,
    this.isSupport = false,
  });
}