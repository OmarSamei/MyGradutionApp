import 'package:flutter/material.dart';
import 'package:graduation_project/Screens/AppContent/Diagnosis_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(60),
        child: AppBar(
          
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0, // إزالة الظل
          leading: IconButton(iconSize: 40,
            icon: const Icon(Icons.notifications_none_outlined, color: Colors.black),
            onPressed: () {}, // الإجراء عند الضغط
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "!..مرحبا بيك ",
                style: TextStyle(
                fontFamily: "Alexandria",
                  color: Colors.blue,
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                radius: 24,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return const DiagnosisPage();
                        }));
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[200],
                padding: const EdgeInsets.symmetric(horizontal: 63, vertical: 27),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade400),
                ),
              ),
              child: const Text(
                'تشخيص',
                style: TextStyle(
                  fontFamily: "Alexandria",
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                  ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                // الإجراء عند الضغط على الزر الثاني
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[200],
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 28),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade400),
                ),
              ),
              child: const Text(
                'دعم ونصائح',
                style: TextStyle(
                fontFamily: "Alexandria",
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                  ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
        ],
        iconSize: 39,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 3,
        
      ),
    );
  }
}