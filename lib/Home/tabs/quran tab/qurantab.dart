import 'package:eslamytask/Home/tabs/quran%20tab/sura_number.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Qurantab extends StatelessWidget {
 Qurantab({super.key});
 List<String>suraNameA = ["الفاتحة", "البقرة" "آل عمران", "النساء", "المائدة","الأنعام", "الأعراف", "الأنفال", "التوبة","يونس", "هود", "يوسف","الرعد","إبراهيم", "الحجر","النحل","الإسراء", "الكهف", "مريم","طه", "الأنبياء", "الحج", "المؤمنون",
  "النور", "الفرقان", "الشعراء", "النمل", "القصص ", "العنكبوت", "الروم", "لقمان", "السجدة" ", ""الأحزاب", "سبا",
  "فاطر", "يس", "الصافات", "ص", "الزمر", "غافر", "فصلت", "الشورى", "الزخرف", "الدخان", "الجاثية", "الأحقاف",
  "محمد","الفتح","الحجرات", "ق", "الذاريات", "الطور", "النجم", "القمر","الرحمن", "الواقعة", "الحديد", "المجادلة",
  " الحشر", "الممتحنة", "الصف", "الجمعة", "المنافقون", "التغابن", "الطلاق", "التجريم","الملك", "القلم", "الحاقة", "المعارج",
  "نوح", "الجن", "المرمل", "المدثر", "القيامة", "الإنسان", "المرسلات", "النبأ", "النازعات","عبس", "التكوير", "الإنفطار",
  " المطفّفين", "الإنشقاق", "البروج", "الطارق","الأعلى", "الغاشية", "الفجر", "البلد", "الشمس","الليل", "الضحى", "الشرح"
  "التين", "العلق", "القدر", "البيئة", "الزلزلة", "العاديات", "القارعة" "التكاثر", "العصر",
  " الهمزة", "الفيل","قريش" "الماعون", "الكوثر", "الكافرون", "النصر", "المسد", "الإخلاص", "الفلق", "الناس"];
 List<int> numOfVerses = [
   7, 286, 200, 176, 120, 165, 206, 75, 129,
   109, 123, 111, 43, 52, 99, 128, 111, 110, 98, 135,
   112, 78, 118, 64, 77, 227, 93, 88, 69,
   60, 34, 30, 73, 54, 45, 83, 182, 88, 75,
   85, 54, 53, 89, 59, 37, 35, 38, 29,
   18, 45, 60, 49, 62, 55, 78, 96, 29,
   22, 24, 13, 14, 11, 11, 18, 12, 12,
   30, 52, 52, 44, 28, 28, 20, 56, 40, 31,
   50, 40, 46, 42, 29, 19, 36, 25, 22, 17,
   19, 26, 30, 20, 15, 21, 11, 8, 8, 3,
   9, 5, 4, 7, 3, 6
 ];

 List<String> suraNameE = [
   "Al-Fatiha", "Al-Baqarah", "Aal-E-Imran", "An-Nisa", "Al-Ma'idah", "Al-An'am", "Al-A'raf", "Al-Anfal", "At-Tawbah",
   "Yunus", "Hud", "Yusuf", "Ar-Ra'd", "Ibrahim", "Al-Hijr", "An-Nahl", "Al-Isra", "Al-Kahf", "Maryam", "Taha",
   "Al-Anbiya", "Al-Hajj", "Al-Mu'minun", "An-Nur", "Al-Furqan", "Ash-Shu'ara", "An-Naml", "Al-Qasas", "Al-Ankabut",
   "Ar-Rum", "Luqman", "As-Sajda", "Al-Ahzab", "Saba", "Fatir", "Ya-Sin", "As-Saffat", "Sad", "Az-Zumar", "Ghafir",
   "Fussilat", "Ash-Shura", "Az-Zukhruf", "Ad-Dukhan", "Al-Jathiya", "Al-Ahqaf", "Muhammad", "Al-Fath", "Al-Hujurat",
   "Qaf", "Adh-Dhariyat", "At-Tur", "An-Najm", "Al-Qamar", "Ar-Rahman", "Al-Waqi'a", "Al-Hadid", "Al-Mujadila",
   "Al-Hashr", "Al-Mumtahina", "As-Saff", "Al-Jumu'a", "Al-Munafiqun", "At-Taghabun", "At-Talaq", "At-Tahrim",
   "Al-Mulk", "Al-Qalam", "Al-Haqqah", "Al-Ma'arij", "Nuh", "Al-Jinn", "Al-Muzzammil", "Al-Muddathir", "Al-Qiyama",
   "Al-Insan", "Al-Mursalat", "An-Naba", "An-Nazi'at", "Abasa", "At-Takwir", "Al-Infitar", "Al-Mutaffifin",
   "Al-Inshiqaq", "Al-Buruj", "At-Tariq", "Al-A'la", "Al-Ghashiya", "Al-Fajr", "Al-Balad", "Ash-Shams", "Al-Lail",
   "Ad-Duha", "Ash-Sharh", "At-Tin", "Al-Alaq", "Al-Qadr", "Al-Bayyina", "Az-Zalzala", "Al-Adiyat", "Al-Qari'a",
   "At-Takathur", "Al-Asr", "Al-Humaza", "Al-Fil", "Quraysh", "Al-Ma'un", "Al-Kawthar", "Al-Kafirun", "An-Nasr",
   "Al-Masad", "Al-Ikhlas", "Al-Falaq", "An-Nas"
 ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/images/header.png'),
          TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: "Sura Name",
                prefixIcon: ImageIcon(AssetImage("assets/images/quran_icon.png"),color: Color.fromRGBO(226, 190, 127, 1),),
                hintStyle: GoogleFonts.elMessiri(
                    color: Colors.white,
                    fontSize: 16, fontWeight: FontWeight.bold),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFFE2BE7F))), // Out
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Color(0xFFE2BE7F))), // Out
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xFFE2BE7F)), // OutlineInputBorder
                ),// TextField
              )
          ),
          SizedBox(height: 20,),
          Text("Most Recently", style: GoogleFonts.elMessiri(color: Colors.white), ),
          Container(),
          Text("Sura List", style: GoogleFonts.elMessiri(color: Colors.white),),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.separated(separatorBuilder:(context, index) => Divider(

            ),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
             return Number(nameEn:suraNameE[index], nameAr:suraNameA[index], index:index+1, numOfVerses:numOfVerses[index]);
             },
              itemCount: suraNameA.length,
            ),
          )
        ],
      ),
// Column
    ); // Padding // Center
  }
}
