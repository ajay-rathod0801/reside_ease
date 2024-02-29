import 'package:flutter/material.dart';
import 'package:reside_ease/widgets/message_card.dart';

class CommunityPost extends StatelessWidget {
  const CommunityPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        children: [
          CardNotice(
            leading: CircleAvatar(
              child: Text('A'),
            ),
            title: 'Ashish Patel, A-301',
            subtitle: '11 hours ago',
            description: "Looking to purchase a 3 BHK any leads???",
            onMessagePressed: () {
              // Add learn more logic here
            },
          ),

          CardNotice(
            leading: CircleAvatar(
              child: Text('B'), // You can place initials or an image here
            ),
            title: 'Varun Mandal, N-302',
            subtitle: '12 days ago',
            description:
                "Kudos to our amazing maintenance team for promptly fixing the elevator issue - your hard work doesn't go unnoticed!",
            onMessagePressed: () {
              // Add learn more logic here
            },
          ),

          CardNotice(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/icons/avatar1.jpg'), // You can place initials or an image here
            ),
            title: 'Aryan Lumrai, B-201',
            subtitle: '12 days ago',
            description:
                "Just moved in and already feeling warm welcome from our neighbors! Excited to be a part of this wonderful community",
            onMessagePressed: () {
              // Add learn more logic here
            },
          ),

          CardNotice(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/icons/avatar1.jpg'), // You can place initials or an image here
            ),
            title: 'Keisha Adebe, A-102',
            subtitle: '3 weeks ago',
            description:
                "A big thank you to whoever found my daughter's lost teddy bear near the playground and left it at the community center. Your kindness made her day, and we're grateful for this tight-knit community",
            onMessagePressed: () {
              // Add learn more logic here
            },
          ),

          CardNotice(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/icons/avatar1.jpg'), // You can place initials or an image here
            ),
            title: 'Manuel Ababio, F-101',
            subtitle: '14 weeks ago',
            description:
                "Shoutout to our vigilant neighbors who noticed a suspicious activity and promptly reported it to the authorities.",
            onMessagePressed: () {
              // Add learn more logic here
            },
          ),
          // Add more CardEvents as needed
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          ElevatedButton(
                            child: Text('Post'),
                            onPressed: () {
                              // Handle post logic here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade900,
                              foregroundColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 15,
                            // Replace with your user's profile photo
                            backgroundImage: NetworkImage(
                                'https://placehold.co/600x400@2x.png'),
                          ),
                          SizedBox(
                              width:
                                  10), // Add some spacing between the avatar and the text field
                          Expanded(
                            child: TextFormField(
                              maxLines: 5,
                              maxLength: 200,
                              decoration: InputDecoration(
                                hintText: "What's happening?",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue.shade900,
      ),
    );
  }
}
