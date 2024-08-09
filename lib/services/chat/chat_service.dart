import 'package:chat_application/models/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatService {
  // get instance of firestore
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // get user stream
  Stream<List<Map<String, dynamic>>> getUsersSteam() {
    return _firestore.collection("Users").snapshots().map(
      (snapshot) {
        return snapshot.docs.map(
          (doc) {
            // go through each individual user
            final user = doc.data();

            // return the user
            return user;
          },
        ).toList();
      },
    );
  }

  // send message
  Future<void> sendMessage(String receiverID, message) async {
    // get the current user info
    final String currentUserID = _auth.currentUser!.uid;
    final String currentUserEmail = _auth.currentUser!.email!;
    final Timestamp timestamp =
        Timestamp.now(); // the time when the message was sent

    // create a new message

    Message newMessage = Message(
      senderID: currentUserID,
      senderEmail: currentUserEmail,
      receiverID: receiverID,
      message: message,
      timestamp: timestamp,
    );

    // construct chat room ID for the two users (sorted to ensure uniqueness)
    List<String> ids = [currentUserID, receiverID];
    ids.sort(); // sort the ids (this ensure the chatroomID is the same for any 2 people)
    String chatRoomID = ids.join('_');

    // add new message to the database
    await _firestore
        .collection("chat_rooms")
        .doc(chatRoomID)
        .collection("messages")
        .add(
          newMessage.toMap(),
        );
  }

  // get messages
}
