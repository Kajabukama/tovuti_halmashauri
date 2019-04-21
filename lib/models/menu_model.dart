class Menu {

  String title;
  String subtitle;
  String assetPath;
  
  Menu({this.title, this.subtitle, this.assetPath});

}

List<Menu> items = [
  Menu(
    title: 'Historia',
    subtitle: 'Historia ya Tanzania',
    assetPath: 'http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/profile/nyerere.jpg'
  ),
  Menu(
    title: 'Jiografia na Utalii',
    subtitle: 'Uoto wa Asili na Utalii wetu',
    assetPath: 'http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/profile/utalii.jpg'
  ),
  Menu(
    title: 'Takwimu Tanzania',
    subtitle: 'Tanzania katika Takwimu',
    assetPath: 'http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/profile/takwimu.jpg'
  ),
  Menu(
    title: 'Uwekezaji na Biashara',
    subtitle: 'Fursa za Uwekezaji na Biashara',
    assetPath: 'http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/profile/biashara.jpg'
  )
];