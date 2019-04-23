import 'package:flutter/material.dart';
import 'package:share/share.dart';

class AboutScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.share),
                onPressed: (){
                  Share.share('Fikia Tovuti za Halmashauri mbalimbali Tanzania kiganjani mwako, pakua App ya Tovuti za Mikoa na Halmashauri za Tanzania sasa \n https://play.google.com/store/apps/details?id=com.boldtz.tovutizamikoa');
                },
              )
            ],
            title: Text("Taarifa"),
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(text: "Kuhusu"),
                Tab(text: "Sera ya Faragha")
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 80.0,
                      padding: EdgeInsets.only(bottom: 50.0, top: 20.0),
                      child: Image(
                        image: AssetImage("assets/coat_arms.png"),
                      )
                    ),
                    Container(
                      child: Text("Tovuti za Mikoa na Halmashauri", style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700
                      ), textAlign: TextAlign.center,),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text("Hakimiliki. 2019 OR-TAMISEMI", style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text("Toleo 3.0.3", style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700
                      ),),
                    ),
                    Container(
                      alignment:Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                      child: Text("Program hii ya Tovuti za Mikoa na Halmashauri zote za Tanzania Bara, imesanifiwa na kuandikwa na Ofisi ya Rais TAMISEMI, idara ya Tehama wakishirikiana na wadau wa Maenedeleo Tanzania, USAID katika mradi wa Uimarishaji wa Mifumo katika Sekta ya Umma (PS3).", style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500
                      ), textAlign: TextAlign.center,),
                    ),
                    
                    
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: Text("Sera ya Faragha",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      child: Text("Programu italinda faragha na usalama wa wanaotembelea, haitakusanya wala kutoa taarifa binafsi wakati unapotembelea Programu yetu isipokuwa kwa uamuzi binafsi wa kutoa taarifa.\n\nProgramu hii ina viungio kwenda tovuti zingine za Serikali ambazo kwa namna moja au nyingine zimetofautiana kwenye ulinzi wake wa data na kanuni za faragha zinaweza kutofautiana na za kwetu. Hatuwajibiki kwa maudhui na kanuni za faragha za tovuti hizo na tunakushauri uangalie ilani za faragha za tovuti hizo kabla hujatumia."),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                      child: Text("Mabadiliko ya Sera ya Faragha.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      child: Text("Kukitokea mabadiliko yoyote katika sera hii, tutaweka taarifa iliyohuishwa mara moja katika ukurasa. Aidha , tunashauri upitie ukurasa huu mara kwa mara na kusoma taarifa zilizo huishwa ili kupata uelewa wa mabadiliko ya sera yetu."),
                    )
                  ],
                )
              ),
            ],
          )
        ),
      );
  }
}