import mods.farmersdelight.CookingPot;
import crafttweaker.api.data.MapData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

#Zombie to Leather
val flesh = <item:minecraft:rotten_flesh>;
val salts = <tag:items:crafttweaker:salts>;
<recipetype:farmersdelight:cooking>.addRecipe("flesh_to_prepared", <item:jrftl:prepared_flesh>, 
    [flesh, flesh, flesh, flesh, salts, salts], 
    <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>,
    null,
    0.1,
    100
);

#Nerf Animal Oil Recipe
val fat = <item:delightful:animal_fat>;
val oil = <item:delightful:animal_oil_bottle>;
<recipetype:farmersdelight:cooking>.remove(oil);
<recipetype:farmersdelight:cooking>.addRecipe("animal_fat_to_oil", oil,
    [fat, fat, fat],
    <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>,
    <item:minecraft:glass_bottle>,
    0.35,
    200
);