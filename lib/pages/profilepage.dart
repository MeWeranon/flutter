import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage('https://scontent.fbkk5-4.fna.fbcdn.net/v/t39.30808-6/331307571_996917594605712_5751185147034873755_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeF1pi9ikU_ybknPKCiUvPp3CzCuUgM5nC8LMK5SAzmcLxyIrj6DXtKBtjDSoQjWcUM__CqUl11jrAs_VLuvZ_3t&_nc_ohc=CGnXncFsfoUAX_TGMet&_nc_ht=scontent.fbkk5-4.fna&oh=00_AfAWXZWKgfOHu9-jTFeRuhzCMWiADx0W0lIjyguZLw4vkg&oe=64F5B5CF'),
            ),
            SizedBox(height: 20),
            Text(
              'Weranon Thongmak',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'UI/UX Designer',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Center(child: SizedBox(height: 20)),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('s6407012660177@email.kmutnb.ac.th'),
            ),
            Center(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('+66 0643294982'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'About me :',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                child: Text(
                '''The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that does not distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it is seen all around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum.''',
                  style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 100, 99, 99)),
                ),
              ),
            ),
            SizedBox(height: 20), // Add some spacing

            // Social Icons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialIcon(Icons.line_style, 'Line', 'https://line.com/your_profile'),
                SizedBox(width: 20),
                _buildSocialIcon(Icons.facebook, 'Facebook', 'https://facebook.com/your_profile'),
                SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, String label, String link) {
    return Column(
      children: [
        Icon(icon, size: 40),
        SizedBox(height: 5),
        TextButton(
          onPressed: () {
            // Add functionality to open the social media profile
          },
          child: Text(label),
        ),
      ],
    );
  }
}
