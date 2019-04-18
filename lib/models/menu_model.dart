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
    assetPath: 'assets/president.jpg'
  ),
  Menu(
    title: 'Jiografia na Utalii',
    subtitle: 'Uoto wa Asili na Utalii wetu',
    assetPath: 'assets/president.jpg'
  ),
  Menu(
    title: 'Takwimu Tanzania',
    subtitle: 'Tanzania katika Takwimu',
    assetPath: 'assets/president.jpg'
  ),
  Menu(
    title: 'Uwekezaji na Biashara',
    subtitle: 'Fursa za Uwekezaji na Biashara',
    assetPath: 'assets/president.jpg'
  )
];