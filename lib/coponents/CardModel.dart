class CardModel {
  String heading;
  String discription;
  String cardimage;
  String buttonname;
  int cardBackground;
  

  CardModel(this.heading, this.discription, this.cardimage, this.buttonname,
      this.cardBackground);
}

List<CardModel> cards = cardData.map(
  (item) => CardModel(
    item['heading'],
    item['discription'],
    item['cardimage'],
    item['buttonname'],
    item['cardBackground'],
    
  ),
).toList();

List<Map<String,dynamic>> cardData  = [
  {
    "heading": "KYC Status",
    "discription": "Complete KYC verification.",   
    "cardimage": "assets/images/Dashboard-01.png",
    "cardBackground": 0xFF009EF7,
    "buttonname": "Verify",

  },
  {
    "heading": "Meet Moolaah Partner",
    "discription": "Chat with your Moolah Partner",   
    "cardimage": "assets/images/Dashboard-02.png",
    "cardBackground": 0xFFFD5E74,
    "buttonname": "Chat",
  },
   {
    "heading": "Start Investing",
    "discription": "Let's Multiple your funds here.",   
    "cardimage": "assets/images/Dashboard-03.png",
    "cardBackground": 0xFF50CD89,
    "buttonname": "Invest",

  },
   {
    "heading": "Risk Status",
    "discription": "Complete the Risk page",   
    "cardimage": "assets/images/Dashboard-04.png",
    "cardBackground": 0xFFECC538,
    "buttonname": "Proceed",

  }

];

