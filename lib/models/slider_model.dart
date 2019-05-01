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
      screenColor: 0xFF20BF6B,
      textColor: 0xFFFFFFFF,
      personName: 'Mwl. Julius K. Nyerere',
      personTitle: 'Rais wa Kwanza, wa Jamhuri ya Muungano Tanzani',
      personQuote:
          'Ukweli una tabia moja nzuri sana, haujali mkubwa au mdogo;haujali rafiki au adui; kwake watu wote ni sawa.',
      assetPath: 'assets/nyerere.jpg'
  ),
  PageModel(
      screenColor: 0xFF21AD6F,
      textColor: 0xFFFFFFFF,
      personName: 'Mhe. Benjamini W. Mkapa',
      personTitle: 'Rais Mstaafu, wa Jamhuri ya Muungano Tanzani',
      personQuote:
          'Ni Heri umasikini katika UHURU kuliko utajiri katika utumwa.',
      assetPath: 'assets/mkapa.jpg'
  ),
  PageModel(
      screenColor: 0xFF22a6b3,
      textColor: 0xFFFFFFFF,
      personName: 'Mhe. Dkt. Jakaya M. Kikwete',
      personTitle: 'Rais Mstaafu, wa Jamhuri ya Muungano Tanzani',
      personQuote:'Lengo letu kuu ni kusukuma ukuaji wa uchumi kwa ARI MPAYA, NGUVU MPYA na KASI MPYA ili kuwa na MAISHA BORA KWA KILA MTANZANIA.',
      assetPath: 'assets/kikwete.jpg'
  ),
  PageModel(
      screenColor: 0xFF09a4d2,
      textColor: 0xFFFFFFFF,
      personName: 'Mhe. Dkt John Pombe. Magufuli',
      personTitle:'Rais wa Jamhuri ya Muungano wa Tanzania',
      personQuote:'Nimeamua nchi iende mbele, na itaenda, anayefikiri haitakwenda, atakwama yeye kwa sababu Mungu yupo na mimi.',
      assetPath: 'assets/president.jpg'
  ),
  PageModel(
      screenColor: 0xFF16a085,
      textColor: 0xFFFFFFFF,
      personName: 'Mhe. Samia S. Hassan',
      personTitle: 'Makamu wa Rais',
      personQuote:'Utunzaji wa Mazingira upo ndani ya moyo wangu, sitasita kumchukulia hatua mtendaji yeyote atakayekuwa anafanya kazi katika kiwango cha chini na kuwasilisha taarifa zisizokuwa na uhalisia.',
      assetPath: 'assets/suluhu.jpg'
  ),
  PageModel(
      screenColor: 0xFFf1c40f,
      textColor: 0xFF000000,
      personName: 'Mhe. Kassim M. Majaliwa',
      personTitle: 'Waziri Mkuu Tanzania',
      personQuote:'Serikali ipo tayari wakati wote kuyapatia ufumbuzi matatizo ya wafanyakazi ikiwa ni pamoja na kuboresha mishahara na maslahi yenu. Wito wa Serikali ni kuwa wafanyakazi watekeleze majukumu yao kwa uadilifu,weledi na kujituma ikiwa ndio chachu ya kufikia malengo na ustawi wa nchi yetu.',
      assetPath: 'assets/majaliwa.jpg'
  ),
  PageModel(
      screenColor: 0xFF00AD50,
      textColor: 0xFFFFFFFF,
      personName: 'Mhe. Seleman S. Jafo',
      personTitle: 'Waziri wa Nchi, OR-TAMISEMI',
      personQuote:'Hakuna maendeleo bila kuwa na nidhamu katika utendaji wa kazi. Wananchi wanahitaji huduma bora na huduma bora haitapatikana kama watendaji wa Serikali hawatakuwa na nidhamu na hofu ya Mungu.',
      assetPath: 'assets/jafo.jpg'
  )
];
