# KERA

Kera is a flutter based app with fetches food from an API.
The app takes a users preferences and displays foods based on the preferences.
The user can select the foods of their choice and view thee recipe.

The application has 3 main screens including homescreen, favorites, and settings.
The homescreen displays all the foods based on a users preferences. When the user clicks on a food item, they are redirected to a details page where they can view the recipe of the food.

The application has a favorites screen where one can view their favorite foods and perform actions on them like delete.

The application also has a settings page where the user can control the feature of the app.

The movement from one screen to another is aided by the use of a bottom navigation bar which is visible in all screens.

## Shortcomings

The API used has limited data thus making the application have limited features. The API only provides a few features
including food_id, food_title, food_image, food_ingredients,food_category, and directions to prepare the food.
The application however uses the available feature to perform its functions.

The API takes a while to display the data. In this case, the API cannot be optimized from my end. In this case, a loading effect has been included to notify the user that the app is indeed fetching the data.
