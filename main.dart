import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أذكاري',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Tajawal', // يمكنك تغيير الخط أو حذفه
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// بيانات الأذكار (فئات وأذكار كثيرة)
final Map<String, List<String>> dhikrData = {
  'أذكار الصباح': [
    'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ',
    'لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ',
    'أَصْبَحْنَا عَلَى فِطْرَةِ الْإِسْلَامِ',
    'اللَّهُمَّ بِكَ أَصْبَحْنَا',
    'رَضِيتُ بِاللَّهِ رَبًّا وَبِالْإِسْلَامِ دِينًا',
    'حَسْبِيَ اللَّهُ لَا إِلَهَ إِلَّا هُوَ',
    'اللَّهُمَّ مَا أَصْبَحَ بِي مِنْ نِعْمَةٍ فَمِنْكَ',
    'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ',
  ],
  'أذكار المساء': [
    'أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلَّهِ',
    'اللَّهُمَّ بِكَ أَمْسَيْنَا',
    'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ',
    'اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ هَذِهِ اللَّيْلَةِ',
    'بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ',
    'اللَّهُمَّ أَمْسَيْنَا نَشْهَدُ أَنَّكَ رَبُّنَا',
    'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ عَذَابِ الْقَبْرِ',
  ],
  'أدعية عامة': [
    'رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ',
    'رَبِّ اشْرَحْ لِي صَدْرِي وَيَسِّرْ لِي أَمْرِي',
    'اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ فِي الدُّنْيَا وَالْآخِرَةِ',
    'اللَّهُمَّ أَصْلِحْ لِي دِينِي وَدُنْيَايَ',
    'رَبِّ زِدْنِي عِلْمًا',
    'اللَّهُمَّ اجْعَلْنِي مِنَ الصَّابِرِينَ',
    'اللَّهُمَّ إِنِّي ظَلَمْتُ نَفْسِي ظُلْمًا كَثِيرًا',
    'لا إِلَهَ إِلا أَنْتَ سُبْحَانَكَ إِنِّي كُنْتُ مِنَ الظَّالِمِينَ',
  ],
  'أذكار النوم': [
    'بِاسْمِكَ اللَّهُمَّ أَمُوتُ وَأَحْيَا',
    'اللَّهُمَّ قِنِي عَذَابَكَ يَوْمَ تَبْعَثُ عِبَادَكَ',
    'سُبْحَانَ اللَّهِ (٣٣) وَالْحَمْدُ لِلَّهِ (٣٣) وَاللَّهُ أَكْبَرُ (٣٤)',
    'اللَّهُمَّ أَسْلَمْتُ نَفْسِي إِلَيْكَ',
    'بِاسْمِكَ رَبِّ وَضَعْتُ جَنْبِي',
  ],
  'أذكار الخروج من المنزل': [
    'بِسْمِ اللَّهِ تَوَكَّلْتُ عَلَى اللَّهِ',
    'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ أَنْ أَضِلَّ أَوْ أُضَلَّ',
    'اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ مَا خَرَجْتُ لَهُ',
    'لا حَوْلَ وَلا قُوَّةَ إِلَّا بِاللَّهِ',
  ],
  'أذكار دخول المنزل': [
    'بِسْمِ اللَّهِ وَلَجْنَا وَبِسْمِ اللَّهِ خَرَجْنَا',
    'اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ الْمَوْلِجِ وَخَيْرَ الْمَخْرَجِ',
    'اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ الْبَيْتِ',
  ],
  'أذكار بعد الصلاة': [
    'أَسْتَغْفِرُ اللَّهَ (٣ مرات)',
    'اللَّهُمَّ أَنْتَ السَّلَامُ وَمِنْكَ السَّلَامُ',
    'سُبْحَانَ اللَّهِ (٣٣) وَالْحَمْدُ لِلَّهِ (٣٣) وَاللَّهُ أَكْبَرُ (٣٣)',
    'لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ',
    'اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ',
  ],
};

// الصفحة الرئيسية (بخلفية وأيقونات)
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('أذكاري'),
        centerTitle: true,
        elevation: 0, // يجعل الشريط شفافاً قليلاً
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade50, Colors.teal.shade50],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            // رسالة ترحيب
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
                ],
              ),
              child: Text(
                'مرحباً بك في تطبيق أذكاري 🌸\nاختر الفئة لعرض الأذكار',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            // قائمة الفئات
            Expanded(
              child: ListView.builder(
                itemCount: dhikrData.keys.length,
                itemBuilder: (context, index) {
                  String category = dhikrData.keys.elementAt(index);
                  IconData categoryIcon = _getIconForCategory(category);
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      leading: Icon(categoryIcon, size: 32, color: Colors.green),
                      title: Text(
                        category,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, size: 18),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DhikrListScreen(category: category),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // دالة لاختيار الأيقونة حسب الفئة
  IconData _getIconForCategory(String category) {
    switch (category) {
      case 'أذكار الصباح':
        return Icons.wb_sunny;
      case 'أذكار المساء':
        return Icons.nightlight_round;
      case 'أدعية عامة':
        return Icons.favorite;
      case 'أذكار النوم':
        return Icons.bed;
      case 'أذكار الخروج من المنزل':
        return Icons.exit_to_app;
      case 'أذكار دخول المنزل':
        return Icons.home;
      case 'أذكار بعد الصلاة':
        return Icons.mosque;
      default:
        return Icons.star;
    }
  }
}

// صفحة عرض الأذكار (بخلفية متدرجة)
class DhikrListScreen extends StatelessWidget {
  final String category;
  DhikrListScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    List<String> dhikrs = dhikrData[category] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade50, Colors.teal.shade50],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: dhikrs.isEmpty
            ? Center(child: Text('لا توجد أذكار في هذه الفئة'))
            : ListView.builder(
                itemCount: dhikrs.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    elevation: 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        dhikrs[index],
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}