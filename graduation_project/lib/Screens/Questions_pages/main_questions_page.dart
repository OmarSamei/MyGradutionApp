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
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
            Image.asset("Photos/gradLogo1.png",
              width: 100,
              height: 150),
   Container(
  decoration: BoxDecoration( // لون الخلفية اللبني
    border: Border.all(
      color: Colors.blue, // لون الحواف الزرقاء
      width: 2.0, // سمك الحواف
    ),
    borderRadius: BorderRadius.circular(8.0), // جعل الحواف مستديرة إذا كنت تريد
  ),
  padding: const EdgeInsets.all(8.0), // مسافة بين النص والحواف
  child: const Text(
    'الأسئلة',
    style: TextStyle(
      fontFamily: "Alexandria",
      fontSize: 24.0, // حجم الخط الكبير
      fontWeight: FontWeight.bold, // جعل الخط عريض
      color: Colors.blue, // لون الخط أسود
    ),
    textAlign: TextAlign.center, // جعل النص في المنتصف
  ),
),

          const SizedBox(height: 80), // مسافة بين النص والقائمة
          _buildListTile(context, 'السلوكيات التكرارية أو المقيدة' , const RepetitiveBehaviorsPage()),
          _buildListTile(context, 'التفاعل الاجتماعي', const SocialInteractionPage()),
          _buildListTile(context, 'التواصل اللفظي وغير لفظي', const CommunicationPage()),
          _buildListTile(context, 'العناية بالذات', const SelfCarePage()),
          _buildListTile(context, 'الانتباه', const AttentionPage()),
        ],
      ),
    );
  }

  Widget _buildListTile(BuildContext context, String title, Widget nextPage) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontFamily: "Alexandria",fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black), // سهم باتجاه اليمين
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
  const RepetitiveBehaviorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('السلوكيات التكرارية أو المقيدة',
        style: TextStyle(
            fontFamily: "Alexandria",
            color: Colors.black
        ),),
      ),
      body: const Center(child: Text('صفحة السلوكيات التكرارية أو المقيدة')),
    );
  }
}

class SocialInteractionPage extends StatelessWidget {
  const SocialInteractionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('التفاعل الاجتماعي'),
      ),
      body: const Center(child: Text('صفحة التفاعل الاجتماعي')),
    );
  }
}

class CommunicationPage extends StatelessWidget {
  const CommunicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('التواصل اللفظي وغير لفظي'),
      ),
      body: const Center(child: Text('صفحة التواصل اللفظي وغير لفظي')),
    );
  }
}

class SelfCarePage extends StatelessWidget {
  const SelfCarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('العناية بالذات'),
      ),
      body: const Center(child: Text('صفحة العناية بالذات')),
    );
  }
}

class AttentionPage extends StatelessWidget {
  const AttentionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الانتباه'),
      ),
      body: const Center(child: Text('صفحة الانتباه')),
    );
  }
}
