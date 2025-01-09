import 'package:flutter/material.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // جعل خلفية الصفحة بيضاء
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'الأسئلة',
            style: TextStyle(
              fontSize: 24.0, // حجم الخط الكبير
              fontWeight: FontWeight.bold, // جعل الخط عريض
              color: Colors.black, // لون الخط أسود
            ),
            textAlign: TextAlign.center, // جعل النص في المنتصف
          ),
          SizedBox(height: 30), // مسافة بين النص والقائمة
          _buildListTile(context, 'السلوكيات التكرارية أو المقيدة', RepetitiveBehaviorsPage()),
          _buildListTile(context, 'التفاعل الاجتماعي', SocialInteractionPage()),
          _buildListTile(context, 'التواصل اللفظي وغير لفظي', CommunicationPage()),
          _buildListTile(context, 'العناية بالذات', SelfCarePage()),
          _buildListTile(context, 'الانتباه', AttentionPage()),
        ],
      ),
    );
  }

  Widget _buildListTile(BuildContext context, String title, Widget nextPage) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black), // سهم باتجاه اليمين
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextPage),
        );
      },
    );
  }
}

// Placeholder pages
class RepetitiveBehaviorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('السلوكيات التكرارية أو المقيدة'),
      ),
      body: Center(child: Text('صفحة السلوكيات التكرارية أو المقيدة')),
    );
  }
}

class SocialInteractionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('التفاعل الاجتماعي'),
      ),
      body: Center(child: Text('صفحة التفاعل الاجتماعي')),
    );
  }
}

class CommunicationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('التواصل اللفظي وغير لفظي'),
      ),
      body: Center(child: Text('صفحة التواصل اللفظي وغير لفظي')),
    );
  }
}

class SelfCarePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('العناية بالذات'),
      ),
      body: Center(child: Text('صفحة العناية بالذات')),
    );
  }
}

class AttentionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الانتباه'),
      ),
      body: Center(child: Text('صفحة الانتباه')),
    );
  }
}
