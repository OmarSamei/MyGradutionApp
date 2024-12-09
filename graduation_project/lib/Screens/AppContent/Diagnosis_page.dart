import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/AppContent/photo_upload.dart';
import 'package:graduation_project/Screens/AppContent/questions_page.dart';

class DiagnosisPage extends StatelessWidget {
  const DiagnosisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // لون خلفية شريط التطبيق
        elevation: 0, // إزالة الظل
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black,size: 33,), // زر الرجوع
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
    
      body:Column(
      
            children: [
              const SizedBox(height: 160), // مسافة بين شريط التطبيق والمحتوى
              const Text(
                'اختر أي من الطريقتين للتشخيص',
                style: TextStyle(
                  
                fontFamily: "Alexandria",
                  color: Colors.blue,
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 88,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                        backgroundColor: Colors.grey[200],
                        padding: const EdgeInsets.symmetric(horizontal: 56, vertical: 44),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.grey.shade400),
                        ),
                      ),
                      child: const Text(
                        'أسئلة',
                        style: TextStyle(
                          fontFamily: "Alexandria",
                          color: Colors.blue,
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return  ImageUploadPage();
                        }));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 44),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.grey.shade400),
                        ),
                      ),
                      child: const Text(
                      'صورة الطفل',
                        style: TextStyle(
                          fontFamily: "Alexandria",
                          color: Colors.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        );
        
      
  }
}
