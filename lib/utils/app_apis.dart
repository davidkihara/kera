class AppApi {
  // setHeaders() => {
  //       'Content-type': 'application/json',
  //       'Accept': 'application/json',
  //     };

  static String RECIPES_URL = "https://tasty.p.rapidapi.com/recipes/list";
  setRecipeHeaders() => {
        'X-RapidAPI-Key': 'af90172ffcmsh19444b6ecd094d5p162335jsn1b2a56f61264',
        'X-RapidAPI-Host': 'the-mexican-food-db.p.rapidapi.com'
      };
  static String FOODS_URL = "https://the-mexican-food-db.p.rapidapi.com/";
  static String RECIPE_URL = "'https://the-mexican-food-db.p.rapidapi.com/1";
}
