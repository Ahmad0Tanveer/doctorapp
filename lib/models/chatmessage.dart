class ChatMessage {
  final String message;
  final bool isSender;
  final String time;
  final bool isImage;
  final String? imageUrl;

  ChatMessage({
    required this.message,
    required this.isSender,
    required this.time,
    this.isImage = false,
    this.imageUrl,
  });
}

List<ChatMessage> messages = [
  ChatMessage(message: 'Good Morning Jimmy!', isSender: false, time: '08:00'),
  ChatMessage(message: 'Good Morning Doc! 😁', isSender: true, time: '08:01'),
  ChatMessage(message: 'How are you today? Better?\nI hope you better today', isSender: false, time: '08:01'),
  ChatMessage(message: 'I’m better now. Thank you doc', isSender: true, time: '08:05'),
  ChatMessage(message: '', isSender: false, time: '08:05', isImage: true, imageUrl: 'https://via.placeholder.com/106x159'),
];
