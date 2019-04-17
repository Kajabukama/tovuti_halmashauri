class PageModel {

  final String personName;
  final String personTitle;
  final String personQuote;
  final String assetPath;
  final int screenColor;
  final int textColor;

  PageModel(
      {this.assetPath,
      this.personName,
      this.personTitle,
      this.personQuote,
      this.screenColor, 
      this.textColor}
    );
}

List<PageModel> pages = [
  PageModel(
      screenColor: 0xFF1e90ff,
      textColor: 0xFFFFFFFF,
      personName: 'John JP. Magufuli',
      personTitle: 'Rais wa Tanzania',
      personQuote:
          'Nimeamua nchi iende mbele, na itaenda, anayefikiri haitakwenda, atakwama yeye kwa sababu Mungu yupo na mimi.',
      assetPath: 'assets/president.jpg'),
  PageModel(
      screenColor: 0xFF16a085,
      textColor: 0xFFFFFFFF,
      personName: 'Samia S. Hassan',
      personTitle: 'Makamu wa Rais',
      personQuote:
          'Utunzaji wa Mazingira upo ndani ya moyo wangu, sitasita kumchukulia hatua mtendaji yeyote atakayekuwa anafanya kazi katika kiwango cha chini na kuwasilisha taarifa zisizokuwa na uhalisia.',
      assetPath: 'assets/suluhu.jpg'),
  PageModel(
      screenColor: 0xFFf1c40f,
      textColor: 0xFF000000,
      personName: 'Kassim Majaaliwa',
      personTitle: 'Waziri Mkuu Tanzania',
      personQuote:
          'Serikali ipo tayari wakati wote kuyapatia ufumbuzi matatizo ya wafanyakazi ikiwa ni pamoja na kuboresha mishahara na maslahi yenu. Wito wa Serikali ni kuwa wafanyakazi watekeleze majukumu yao kwa uadilifu,weledi na kujituma ikiwa ndio chachu ya kufikia malengo na ustawi wa nchi yetu.',
      assetPath: 'assets/majaliwa.jpg'),
  PageModel(
      screenColor: 0xFF00AD50,
      textColor: 0xFFFFFFFF,
      personName: 'Seleman Jafo',
      personTitle: 'Waziri, OR-TAMISEMI',
      personQuote:
          'Hakuna maendeleo bila kuwa na nidhamu katika utendaji wa kazi. Wananchi wanahitaji huduma bora na huduma bora haitapatikana kama watendaji wa Serikali hawatakuwa na nidhamu na hofu ya Mungu.',
      assetPath: 'assets/jafo.jpg')
];
