import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.tag.MCTag;

#Furnaces
val brick = <item:minecraft:stone_bricks>;
val blackstone = <item:minecraft:polished_blackstone_bricks>;
val clay = <item:minecraft:clay_ball>;
val empty = <item:minecraft:air>;
val furnace = <item:minecraft:furnace>;
val campfire = <item:minecraft:campfire>;

craftingTable.addShaped('hardcore_furnace', furnace, [
    [brick, brick, brick],
    [clay, campfire, clay],
    [brick, brick, brick]
]);

craftingTable.addShaped('hardcore_blackstone_furnace', <item:nethersdelight:blackstone_furnace>, [
    [blackstone, blackstone, blackstone],
    [clay, campfire, clay],
    [blackstone, blackstone, blackstone]
]);

#Smokers
// val copperBlock = <item:minecraft:copper_block>;
// val copperIngot = <item:minecraft:copper_ingot>;
// val anyLog = <tag:items:minecraft:logs>;
// val netherBrickBlock = <item:minecraft:nether_bricks>;
// val quartz = <item:minecraft:quartz>;
// val quartzBlock = <item:minecraft:quartz_block>;

// craftingTable.addShaped("hardcore_smoker", <item:minecraft:smoker>, [
//     [anyLog, copperBlock, anyLog],
//     [copperIngot, furnace, copperIngot],
//     [anyLog, copperBlock, anyLog]
// ]);

// craftingTable.addShaped("hardcore_nether_brick_smoker", <item:nethersdelight:nether_brick_smoker>, [
//     [netherBrickBlock, quartzBlock, netherBrickBlock],
//     [quartz, <item:nethersdelight:blackstone_furnace>, quartz],
//     [netherBrickBlock, quartzBlock, netherBrickBlock]
// ]);

#Glowstone dust from lichen
val lichen = <item:minecraft:glow_lichen>;
craftingTable.addShapeless('lichen_to_dust', <item:minecraft:glowstone_dust>, [lichen, lichen]);

#Cobweb
val stringy = <item:minecraft:string>;
craftingTable.addShapeless('cobweb_from_string', <item:minecraft:cobweb>, [stringy, stringy, stringy, stringy, stringy, stringy, stringy, stringy, stringy]);

#Nuggets Nerf
craftingTable.addShapeless('raw_iron_nugs', <item:spelunkery:raw_iron_nugget> * 3, [<item:minecraft:raw_iron>]);
craftingTable.addShapeless('raw_gold_nugs', <item:spelunkery:raw_gold_nugget> * 3, [<item:minecraft:raw_gold>]);
craftingTable.addShapeless('raw_copper_nugs', <item:spelunkery:raw_copper_nugget> * 3, [<item:minecraft:raw_copper>]);
craftingTable.addShapeless('raw_magnetite_nugs', <item:spelunkery:raw_magnetite_nugget> * 3, [<item:spelunkery:magnetite_chunk>]);

#Chunk Loaders
val amethystBlock = <item:minecraft:amethyst_block>;
val magnetite = <item:spelunkery:magnetite_chunk>;
val diamond = <item:minecraft:diamond>;
val obsidian = <item:minecraft:obsidian>;
val redstoneBlock = <item:minecraft:redstone_block>;
val echoShard = <item:minecraft:echo_shard>;
val enderEye = <item:minecraft:ender_eye>;
val gold = <item:minecraft:gold_ingot>;
val iron = <item:minecraft:iron_ingot>; 
val membrane = <item:minecraft:phantom_membrane>;
val starShard = <item:progressivebosses:nether_star_shard>;

val singleLoader = <item:chunkloaders:single_chunk_loader>;
val basicLoader = <item:chunkloaders:basic_chunk_loader>;
val advancedLoader = <item:chunkloaders:advanced_chunk_loader>;

craftingTable.addShaped('single_loader', singleLoader, [
    [iron, obsidian, iron],
    [obsidian, redstoneBlock, obsidian],
    [iron, obsidian, iron],
]);

craftingTable.addShaped('basic_loader', basicLoader, [
    [empty, singleLoader, empty],
    [singleLoader, diamond, singleLoader],
    [empty, obsidian, empty],
]);

craftingTable.addShaped('advanced_loader', advancedLoader, [
    [gold, amethystBlock, gold],
    [amethystBlock, basicLoader, amethystBlock],
    [gold, amethystBlock, gold],
]);

craftingTable.addShaped('ultimate_loader', <item:chunkloaders:ultimate_chunk_loader>, [
    [empty, diamond, empty],
    [diamond, advancedLoader, diamond],
    [empty, diamond, empty],
]);

#Bandage Nerf
craftingTable.addShapedMirrored("bandage_nerf", MirrorAxis.ALL, <item:majruszsdifficulty:bandage> * 3, [
    [empty, stringy, stringy],
    [stringy, <tag:items:minecraft:wool>, stringy],
    [stringy, stringy, empty]
]);

#Autocrafter Nerf
val lapis = <item:minecraft:lapis_lazuli>;

craftingTable.addShaped("autocrafter_nerf", <item:craftingautomat:autocrafter>, [
    [lapis, <item:minecraft:crafting_table>, lapis],
    [iron, <item:minecraft:dispenser>, iron],
    [iron, iron, iron]
]);

#Brazier Nerf
// val bars = <item:minecraft:iron_bars>;
// val stoneCrafting = <tag:items:minecraft:stone_crafting_materials>;
// val blaze = <item:minecraft:blaze_powder>;

// craftingTable.addShaped("brazier_nerf", <item:abundant_atmosphere:brazier>, [
//     [empty, blaze, empty],
//     [bars, <item:minecraft:campfire>, bars],
//     [stoneCrafting, stoneCrafting, stoneCrafting]
// ]);

// craftingTable.addShaped("soul_brazier_nerf", <item:abundant_atmosphere:soul_brazier>, [
//     [empty, blaze, empty],
//     [bars, <item:minecraft:soul_campfire>, bars],
//     [stoneCrafting, stoneCrafting, stoneCrafting]
// ]);

# Night Bag
val blueWool = <item:minecraft:blue_wool>;

craftingTable.addShaped("night_bag", <item:sleep_tight:night_bag>, [
    [membrane, membrane, membrane],
    [blueWool, blueWool, blueWool],
]);

# Nether Seal Pieces
val goldIngot = <item:minecraft:gold_ingot>;
val netherCrystal = <item:nether_remastered:seal_crystal>;
val sealPieces = <tag:items:crafttweaker:seal_pieces>;

craftingTable.addShapeless("nether_star_shards", <item:progressivebosses:nether_star_shard> * 4, [
    <item:minecraft:nether_star>
]);

craftingTable.addShapeless("nether_crystal", <item:nether_remastered:seal_crystal>, [
    <item:minecraft:ghast_tear>, <item:progressivebosses:nether_star_shard>
]);

craftingTable.addShaped("nether_seal_shard_1", <item:nether_remastered:seal_piece_1>, [
    [sealPieces, goldIngot, goldIngot],
    [goldIngot, netherCrystal, goldIngot],
    [goldIngot, goldIngot, empty]
]);

craftingTable.addShaped("nether_seal_shard_2", <item:nether_remastered:seal_piece_2>, [
    [goldIngot, goldIngot, sealPieces],
    [goldIngot, netherCrystal, goldIngot],
    [empty, goldIngot, goldIngot]
]);

craftingTable.addShaped("nether_seal_shard_3", <item:nether_remastered:seal_piece_3>, [
    [goldIngot, goldIngot, empty],
    [goldIngot, netherCrystal, goldIngot],
    [sealPieces, goldIngot, goldIngot]
]);

craftingTable.addShaped("nether_seal_shard_4", <item:nether_remastered:seal_piece_4>, [
    [empty, goldIngot, goldIngot],
    [goldIngot, netherCrystal, goldIngot],
    [goldIngot, goldIngot, sealPieces]
]);

# Wither Skull
val soulBlocks = <tag:items:minecraft:soul_fire_base_blocks>;

craftingTable.addShaped("wither_skull", <item:minecraft:wither_skeleton_skull>, [
    [empty, soulBlocks, empty],
    [soulBlocks, <item:minecraft:skeleton_skull>, soulBlocks],
    [empty, <item:endrem:undead_soul>, empty]
]);

# Lighting Changes
val litTorch = <item:realistictorches:lit_torch>;
val torch = <item:minecraft:torch>;

craftingTable.addShaped("oiled_torches", torch * 4,  [
    [empty, litTorch, empty],
    [litTorch, <item:delightful:animal_oil_bottle>.transformReplace(<item:minecraft:glass_bottle>), litTorch],
    [empty, litTorch, empty]
]);

craftingTable.addShaped("fat_candle", <item:minecraft:candle>, [
    [<item:minecraft:string>],
    [<item:delightful:animal_fat>]
]);

craftingTable.addShapeless("jelly_torches", torch * 3, [
    <item:delightful:glow_jelly_bottle>.transformReplace(<item:minecraft:glass_bottle>), litTorch, litTorch, litTorch,
]);

craftingTable.addShaped("new_soul_torch", <item:minecraft:soul_torch>, [
    [torch],
    [soulBlocks]
]);

# Water Bottle Bread Dough
val wheat = <tag:items:forge:crops/wheat>;
val waterBottle = <item:minecraft:potion>.withTag({Potion: "minecraft:water"});
craftingTable.addShapedMirrored("water_bottle_dough", MirrorAxis.ALL, <item:farmersdelight:wheat_dough> * 3, [
    [wheat, wheat], 
    [wheat, waterBottle.transformReplace(<item:minecraft:glass_bottle>)]
]);

# Terracotta Bricks Integration
val colors = [
  "white",
  "orange",
  "magenta",
  "light_blue",
  "yellow",
  "lime",
  "pink",
  "gray",
  "light_gray",
  "cyan",
  "purple",
  "blue",
  "brown",
  "green",
  "red",
  "black",
] as string[];

for color in colors {
    val cwBlock = <item:clayworks:${color}_terracotta_bricks>;
    val bmBlock = <item:biomemakeover:${color}_terracotta_bricks>;
    craftingTable.remove(cwBlock);
    craftingTable.addShaped(color + "_terracotta_brick_cw", cwBlock, [
        [bmBlock, bmBlock],
        [bmBlock, bmBlock]
    ]);
}