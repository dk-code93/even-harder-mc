#priority 1
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.recipe.FurnaceRecipeManager;
import crafttweaker.api.recipe.StoneCutterManager;
import crafttweaker.api.item.IItemStack;

#Crafting Table
val craftingRemovalByName = [
    # Misc
    "minecraft:bread",
    "naturescompass:natures_compass",
    "jrftl:prepared_flesh",
    "delightful:torch_from_animal_oil_bottle",
    "delightful:candle_from_animal_fat",
    "minecraft:soul_torch",
    // "map_atlases:craft_atlas",
    # Working Stations
    "minecraft:furnace",
    "nethersdelight:blackstone_furnace",
    "minecraft:smoker",
    "nethersdelight:nether_brick_smoker",
    "friendsandfoes:acacia_beehive",
    "friendsandfoes:birch_beehive",
    "friendsandfoes:crimson_beehive",
    "friendsandfoes:dark_oak_beehive",
    "friendsandfoes:jungle_beehive",
    "friendsandfoes:mangrove_beehive",
    "friendsandfoes:spruce_beehive",
    "friendsandfoes:warped_beehive",
    # Raw Nuggets
    "spelunkery:raw_iron_nugget",
    "spelunkery:raw_gold_nugget",
    "spelunkery:raw_copper_nugget",
    "spelunkery:raw_magnetite_nugget",
    "spelunkery:leather",
] as string[];

for recipe in craftingRemovalByName {
    craftingTable.removeByName(recipe);
}

val craftingRemovalByItem = [
    # Chunk Loaders
    <item:chunkloaders:single_chunk_loader>,
    <item:chunkloaders:basic_chunk_loader>,
    <item:chunkloaders:advanced_chunk_loader>,
    <item:chunkloaders:ultimate_chunk_loader>,
    # Bandages
    <item:majruszsdifficulty:bandage>,
    <item:craftingautomat:autocrafter>,
    // <item:abundant_atmosphere:brazier>,
    // <item:abundant_atmosphere:soul_brazier>,
    # Misc
    <item:sleep_tight:night_bag>,
] as IItemStack[];

for item in craftingRemovalByItem {
    craftingTable.remove(item);
}

#Furnace
val furnaceRemoval = [
    # Raw Ores
    <item:minecraft:raw_iron>,
    <item:minecraft:raw_gold>,
    <item:minecraft:raw_copper>,
    <item:spelunkery:magnetite_chunk>,
    # Foods
    // <item:minecraft:beef>,
    // <item:minecraft:porkchop>,
    // <item:minecraft:chicken>,
    // <item:minecraft:mutton>,
    // <item:minecraft:rabbit>,
    // <item:minecraft:salmon>,
    // <item:minecraft:cod>,
    // <item:oceansdelight:guardian_tail>,
    // <item:oceansdelight:tentacle_on_a_stick>,
    // <item:oceansdelight:stuffed_cod>,
    // <item:nethersdelight:hoglin_loin>,
    # Misc
    <item:jrftl:prepared_flesh>,
] as IItemStack[];

for item in furnaceRemoval {
    furnace.removeByInput(item);
}

#Stonecutter
val stonecutterRemoval = [
    "immersive_weathering:stone_brick_from_cobblestone_stonecutting",
    "immersive_weathering:stone_brick_from_stonecutting",
    "immersive_weathering:prismarine_brick_from_stonecutting",
    "immersive_weathering:end_stone_brick_from_stonecutting",
    "immersive_weathering:blackstone_brick_from_stonecutting",
    "immersive_weathering:deepslate_brick_from_stonecutting",
    "immersive_weathering:deepslate_tile_from_stonecutting",
    "immersive_weathering:deepslate_brick_from_cobbleslate_stonecutting",
    "immersive_weathering:deepslate_tile_from_cobbleslate_stonecutting",
] as string[];

for recipe in stonecutterRemoval {
    stoneCutter.removeByName(recipe);
}