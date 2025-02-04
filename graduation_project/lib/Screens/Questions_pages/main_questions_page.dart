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
          _buildListTile(context, 'السلوكيات التكرارية أو المقيدة' ,  RepetitiveBehaviorsPage()),
          _buildListTile(context, 'التفاعل الاجتماعي',  SocialInteractionPage()),
          _buildListTile(context, 'التواصل اللفظي وغير لفظي', CommunicationPage()),
          _buildListTile(context, 'العناية بالذات', SelfCarePage()),
          _buildListTile(context, 'الانتباه',  AttentionPage()),
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


class ChoiceButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const ChoiceButton({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
class RepetitiveBehaviorsPage extends StatefulWidget {
  @override
  _RepetitiveBehaviorsPageState createState() => _RepetitiveBehaviorsPageState();
}
class _RepetitiveBehaviorsPageState extends State<RepetitiveBehaviorsPage> {
  // تخزين الإجابات المختارة لكل سؤال
  List<int?> selectedAnswers = [null, null, null, null, null, null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('السلوكيات التكرارية أو المقيدة',style:TextStyle(
          fontFamily: "Alexandria",
      fontSize: 24.0, // حجم الخط الكبير
      fontWeight: FontWeight.bold, // جعل الخط عريض
      color: Colors.blue,
        ) ,),
        centerTitle: true,
      
      ),
      backgroundColor: Colors.white,
      body: 
      Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25,),
              buildQuestion(
                0,
                "هل ينشغل الطفل بلعبة معينة ويترك باقي الألعاب؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                1,
                "هل يستخدم الطفل الألعاب بطريقة نمطية بصورة متكررة؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                2,
                "هل يصدر الطفل أصواتًا حادة؟",
                
              ), SizedBox(height: 25),
                 buildQuestion(
                3,
                "هل يقوم الطفل بالرفرفة بيده الى الامام او الجانبين؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                4,
                "هل يستمر الطفل بعمل سلوكيات محددة اذا ترك بمفرده؟",
                
              ),
               SizedBox(height: 25),
                 buildQuestion(
                5,
                "هل يتبع الطفل سلوكيات بطقوس معينة؟",
              ), SizedBox(height: 35,),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const QuestionsPage();
                          }),
                        );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.blue, // لون الزر الأزرق
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'التالي',
                style: TextStyle(
                fontFamily: "Alexandria",
                fontSize: 20,
                  color: Colors.white)
                ),
              ),
       
            ],
          ),
        ),
      ),
    );
  }

  Widget buildQuestion(int questionIndex, String questionText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          questionText,
          style: TextStyle(
             fontFamily: "Alexandria",
      fontSize: 20, // حجم الخط الكبير
      fontWeight: FontWeight.bold, // جعل الخط عريض
      
          ),
        ),
        SizedBox(height: 20),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (optionIndex) {
            return ChoiceButton(
              text: ["نعم", "أحيانًا", "نادرًا", "لا"][optionIndex],
              isSelected: selectedAnswers[questionIndex] == optionIndex,
              onTap: () {
                setState(() {
                  selectedAnswers[questionIndex] = optionIndex;
                });
              },
            );
          }),
        ),
      ],
      
    );
  }
}


class SocialInteractionPage extends StatefulWidget {
  @override
  _SocialInteractionPageState createState() => _SocialInteractionPageState();
}
class _SocialInteractionPageState extends State<SocialInteractionPage> {
  // تخزين الإجابات المختارة لكل سؤال
  List<int?> selectedAnswers = [null, null, null, null, null, null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.white,
        title: Text('التفاعل الاجتماعي',style:TextStyle(
          fontFamily: "Alexandria",
      fontSize: 24.0, // حجم الخط الكبير
      fontWeight: FontWeight.bold, // جعل الخط عريض
      color: Colors.blue,
        ) ,),
        centerTitle: true,
      
      ),
      backgroundColor: Colors.white,
      body: 
      Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25,),
              buildQuestion(
                0,
                "هل يعجز الطفل عن بدء الحديث مع الأخرين؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                1,
                "هل الطفل غير قادر علي تقليد الأشخاص؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                2,
                "هل يظهر الطفل سعادة محدودة عند التفاعل؟",
                
              ), SizedBox(height: 25),
                 buildQuestion(
                3,
                "هل يفشل الطفل في تكوين صداقات أو الحفاظ عليها؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                4,
                "هل يظهر الطفل إهتمام محدود للأخرين أو يتجاهل وجود الأشخاص؟",
                
              ),
               SizedBox(height: 25),
                 buildQuestion(
                5,
                "هل يبدي الطفل عدم إستجابة عندما يحاول الأخرين التفاعل معه؟",
              ), SizedBox(height: 35,),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const QuestionsPage();
                          }),
                        );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.blue, // لون الزر الأزرق
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'التالي',
                style: TextStyle(
                fontFamily: "Alexandria",
                fontSize: 20,
                  color: Colors.white)
                ),
              ),
       
            ],
          ),
        ),
      ),
    );
  }

  Widget buildQuestion(int questionIndex, String questionText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          questionText,
          style: TextStyle(
             fontFamily: "Alexandria",
      fontSize: 20, // حجم الخط الكبير
      fontWeight: FontWeight.bold, // جعل الخط عريض
      
          ),
        ),
        SizedBox(height: 20),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (optionIndex) {
            return ChoiceButton(
              text: ["نعم", "أحيانًا", "نادرًا", "لا"][optionIndex],
              isSelected: selectedAnswers[questionIndex] == optionIndex,
              onTap: () {
                setState(() {
                  selectedAnswers[questionIndex] = optionIndex;
                });
              },
            );
          }),
        ),
      ],
      
    );
  }
}

class CommunicationPage extends StatefulWidget {
  @override
  _CommunicationPageState createState() => _CommunicationPageState();
}
class _CommunicationPageState extends State<CommunicationPage> {
  // تخزين الإجابات المختارة لكل سؤال
  List<int?> selectedAnswers = [null, null, null, null, null, null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('التواصل اللفظي وغير اللفظي',style:TextStyle(
          fontFamily: "Alexandria",
      fontSize: 24.0, // حجم الخط الكبير
      fontWeight: FontWeight.bold, // جعل الخط عريض
      color: Colors.blue,
        ) ,),
        centerTitle: true,
      
      ),
      backgroundColor: Colors.white,
      body: 
      Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25,),
              buildQuestion(
                0,
                "هل يقوم الطفل بترديد الكلام بشكل متكرر؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                1,
                "هل تلاحظ أن الطفل لا يفهم كثير من الكلمات عند الحديث معه؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                2,
                "هل تلاحظ أن الطفل لا يستطيع فهم المغزى من الحديث أو استيعاب نوايا المتحدث؟",
                
              ), SizedBox(height: 25),
                 buildQuestion(
                3,
                "هل يستطيع الطفل إبداء تعبيرات وجهية تعكس مشاعره؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                4,
                "هل تلاحظ أن الطفل لا ينتظر دوره في الحديث ويقاطع الكلام أحياناً؟",
                
              ),
               SizedBox(height: 25),
                 buildQuestion(
                5,
                "هل يستطيع الطفل فهم تعبيرات الوجه لدي الأشخاص؟",
              ), SizedBox(height: 35,),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const QuestionsPage();
                          }),
                        );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.blue, // لون الزر الأزرق
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'التالي',
                style: TextStyle(
                fontFamily: "Alexandria",
                fontSize: 20,
                  color: Colors.white)
                ),
              ),
       
            ],
          ),
        ),
      ),
    );
  }

  Widget buildQuestion(int questionIndex, String questionText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          questionText,
          style: TextStyle(
             fontFamily: "Alexandria",
      fontSize: 20, // حجم الخط الكبير
      fontWeight: FontWeight.bold, // جعل الخط عريض
      
          ),
        ),
        SizedBox(height: 20),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (optionIndex) {
            return ChoiceButton(
              text: ["نعم", "أحيانًا", "نادرًا", "لا"][optionIndex],
              isSelected: selectedAnswers[questionIndex] == optionIndex,
              onTap: () {
                setState(() {
                  selectedAnswers[questionIndex] = optionIndex;
                });
              },
            );
          }),
        ),
      ],
      
    );
  }
}

class SelfCarePage extends StatefulWidget {
  @override
  _SelfCarePageState createState() => _SelfCarePageState();
}
class _SelfCarePageState extends State<SelfCarePage> {
  // تخزين الإجابات المختارة لكل سؤال
  List<int?> selectedAnswers = [null, null, null, null, null, null, null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('العناية بالذات',style:TextStyle(
          fontFamily: "Alexandria",
      fontSize: 24.0, // حجم الخط الكبير
      fontWeight: FontWeight.bold, // جعل الخط عريض
      color: Colors.blue,
        ) ,),
        centerTitle: true,
      
      ),
      backgroundColor: Colors.white,
      body: 
      Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25,),
              buildQuestion(
                0,
                "هل يستطيع الطفل إرتداء ملابسه بمفرده؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                1,
                "هل يعتني الطفل بنظافته الشخصية؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                2,
                "هل الطفل غير قادر علي التنقل بمفرده؟",
                
              ), SizedBox(height: 25),
                 buildQuestion(
                3,
                "هل تلاحظ أن الطفل معتمد علي الأخرين بشكل كلي؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                4,
                "هل الطفل قادر علي إدراك الوقت أو المال؟",
                
              ),
               SizedBox(height: 25),
                 buildQuestion(
                5,
                "هل الطفل يقوم بغسل يديه (مثلا بعد تناول الطعام)؟",
              ), SizedBox(height: 35,) ,
               SizedBox(height: 25),
                 buildQuestion(
                6,
                "هل تلاحظ أن الطفل لا يستطيع الإستقلالية في أغلب الأمور؟",
              ), SizedBox(height: 35,),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const QuestionsPage();
                          }),
                        );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.blue, // لون الزر الأزرق
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'التالي',
                style: TextStyle(
                fontFamily: "Alexandria",
                fontSize: 20,
                  color: Colors.white)
                ),
              ),
       
            ],
          ),
        ),
      ),
    );
  }

  Widget buildQuestion(int questionIndex, String questionText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          questionText,
          style: TextStyle(
             fontFamily: "Alexandria",
      fontSize: 20, // حجم الخط الكبير
      fontWeight: FontWeight.bold, // جعل الخط عريض
      
          ),
        ),
        SizedBox(height: 20),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (optionIndex) {
            return ChoiceButton(
              text: ["نعم", "أحيانًا", "نادرًا", "لا"][optionIndex],
              isSelected: selectedAnswers[questionIndex] == optionIndex,
              onTap: () {
                setState(() {
                  selectedAnswers[questionIndex] = optionIndex;
                });
              },
            );
          }),
        ),
      ],
      
    );
  }
}

class AttentionPage extends StatefulWidget {
  @override
  _AttentionPageState createState() => _AttentionPageState();
}
class _AttentionPageState extends State<AttentionPage> {
  // تخزين الإجابات المختارة لكل سؤال
  List<int?> selectedAnswers = [null, null, null, null, null, null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('الانتباه',style:TextStyle(
          fontFamily: "Alexandria",
      fontSize: 24.0, // حجم الخط الكبير
      fontWeight: FontWeight.bold, // جعل الخط عريض
      color: Colors.blue,
        ) ,),
        centerTitle: true,
      
      ),
      backgroundColor: Colors.white,
      body: 
      Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25,),
              buildQuestion(
                0,
                "هل تلاحظ أن الطفل لا يستطيع التنقل ببصره بين شيئين؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                1,
                "هل تلاحظ أن الطفل غير منتبه للأشياء المحيطة به؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                2,
                "هل تلاحظ أن الطفل لا يستطيع التنقل ببصره بين شخص وشئ؟",
                
              ), SizedBox(height: 25),
                 buildQuestion(
                3,
                "هل تلاحظ أن الطفل لا يستطيع أن يتنقل ببصره بين شخص وشئين؟",
              ),
              SizedBox(height: 25),
              buildQuestion(
                4,
                "هل تلاحظ أن الطفل لا يستطيع النظر في عينيك أثناء حديثك معه؟",
                
              ),
               SizedBox(height: 25),
                 buildQuestion(
                5,
                "هل تلاحظ إذا حدث أي شئ بسيط قد يخرج الطفل عن تركيزه ويصيب بتشتت؟",
              ), SizedBox(height: 35,),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const QuestionsPage();
                          }),
                        );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.blue, // لون الزر الأزرق
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'التالي',
                style: TextStyle(
                fontFamily: "Alexandria",
                fontSize: 20,
                  color: Colors.white)
                ),
              ),
       
            ],
          ),
        ),
      ),
    );
  }

  Widget buildQuestion(int questionIndex, String questionText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          questionText,
          style: TextStyle(
             fontFamily: "Alexandria",
      fontSize: 20, // حجم الخط الكبير
      fontWeight: FontWeight.bold, // جعل الخط عريض
      
          ),
        ),
        SizedBox(height: 20),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (optionIndex) {
            return ChoiceButton(
              text: ["نعم", "أحيانًا", "نادرًا", "لا"][optionIndex],
              isSelected: selectedAnswers[questionIndex] == optionIndex,
              onTap: () {
                setState(() {
                  selectedAnswers[questionIndex] = optionIndex;
                });
              },
            );
          }),
        ),
      ],
      
    );
  }
}

