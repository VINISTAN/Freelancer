class Performing {
  String bankterms;
  String cap;
  String percentage;
//String suggestion;
//String suggestedname;
  Performing(this.bankterms, this.cap, this.percentage);
}

List<Performing> perform = performingdata
    .map(
      (item) => Performing(
        item['bankterms'],
        item['cap'],
        item['percentage'],
     //   item['suggestion'],
    //    item['suggestedname']
      ),
    )
    .toList();

List<Map<String, dynamic>> performingdata = [
  {
    "bankterms": "SBI Magnum Medium Duration Fund \nRegular Growth",
    "cap": "Equity Small Cap",
    "percentage": "37.17%",
   // "suggested": "Suggested By",
    //"suggestedname": "Anurag Batra",
  },
  {
    "bankterms": "SBI Magnum Medium Duration Fund \nRegular Growth",
    "cap": "Equity Small Cap",
    "percentage": "37.47%",
   // "suggested": "Suggested By",
   // "suggestedname": "Raj Batra",
  },
  {
    "bankterms": "ICICI Prudential Medium Term \nBond Fund Growth",
    "cap": "Equity mid Cap",
    "percentage": "37.47%",
   // "suggested": "Suggested By",
   // "suggestedname": "Anurag Batra",
  },
  {
    "bankterms": "Aditya Birla Sun Life Medium Term \nRegular Growth",
    "cap": "Equity mid Cap",
    "percentage": "37.47%",
  //  "suggested": "Suggested By",
    //"suggestedname": "Raj Batra",

  },
  {
    "bankterms": "Kodak Medium Term Regular \nRegular Growth",
    "cap": "Equity mid Cap",
    "percentage": "37.47%",
   // "suggested": "Suggested By",
   // "suggestedname": "Anurag Batra",
  },
  {
    "bankterms": "SBI Magnum Medium Duration Fund \nRegular Growth",
    "cap": "Equity Flexi Cap",
    "percentage": "37.47%",
   // "suggested": "Suggested By",
   //  "suggestedname": "Raj Batra",
  }
];
