#priority 1
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;

/* <tag:items:forge:nutrients/proteins>.add(<item:collectorsreap:baked_portobello_cap>); */
# Foods
val proteinsToAdd = [
    // <item:oceansdelight:guardian>,
    // <item:oceansdelight:tentacles>,
    // <item:oceansdelight:elder_guardian_slab>,
    <item:endersdelight:shulker_mollusk>,
    <item:endersdelight:mite_crust>,
    <item:spelunkery:button_mushroom>,
    <item:spelunkery:crimini>,
    <item:spelunkery:portabella>
] as IItemStack[];

for item in proteinsToAdd {
    <tag:items:forge:nutrients/proteins>.add(item);
}

val sugarsToAdd = [
    <item:nethersdelight:propelpearl>,
] as IItemStack[];

for item in sugarsToAdd {
    <tag:items:forge:nutrients/sugars>.add(item);
}

val veggiesToAdd = [
    <item:delightful:cactus_flesh>,
    // <item:abundant_atmosphere:cave_parsnip>,
    // <item:abundant_atmosphere:foul_parsnip>,
] as IItemStack[];

for item in veggiesToAdd {
    <tag:items:forge:vegetables>.add(item);
}

// val fishesToAdd = [
//     <item:oceansdelight:guardian_tail>,
// ] as IItemStack[];

// for item in fishesToAdd {
//     <tag:items:forge:raw_fishes>.add(item);
// }

#Zombie flesh cookables
val fleshCookables = [
    <item:minecraft:sugar>,
    <item:spelunkery:salt>,
] as IItemStack[];

for ingredient in fleshCookables {
    <tag:items:crafttweaker:salts>.add(ingredient);
}

<tag:items:minecraft:planks>.remove(<item:spelunkery:conk_fungus>);

#Animal fat makes fire infinite
<tag:items:unlitcampfire:makes_campfire_infinite>.add(<item:delightful:animal_oil_bottle>);

# Seal Pieces
val sealPieces = [
    <item:nether_remastered:seal_piece_1>,
    <item:nether_remastered:seal_piece_2>,
    <item:nether_remastered:seal_piece_3>,
    <item:nether_remastered:seal_piece_4>,
] as IItemStack[];

for item in sealPieces {
    <tag:items:crafttweaker:seal_pieces>.add(item);
}

# Phantom Banishment
val removeBanishment = [
    <item:minecraft:glow_berries>,
] as IItemStack[];

for item in removeBanishment {
    <tag:items:thephantommenace:phantom_banisher>.remove(item);
}

val addBanishment = [
    <item:farmersdelight:hot_cocoa>,
    <item:delightful:ender_nectar>,
] as IItemStack[];


for item in addBanishment {
    <tag:items:thephantommenace:phantom_banisher>.add(item);
}

# Triggers Fishing Minigame

val triggersFishing = [
    <item:minecraft:bamboo>,
    <item:minecraft:bone>,
    <item:minecraft:bow>,
    <item:minecraft:bowl>,
    <item:minecraft:enchanted_book>,
    <item:minecraft:fishing_rod>,
    <item:minecraft:ink_sac>,
    <item:minecraft:leather>,
    <item:minecraft:leather_boots>,
    <item:minecraft:lily_pad>,
    <item:minecraft:name_tag>,
    <item:minecraft:nautilus_shell>,
    <item:minecraft:potion>,
    <item:minecraft:rotten_flesh>,
    <item:minecraft:saddle>,
    <item:minecraft:stick>,
    <item:minecraft:string>,
    <item:minecraft:tripwire_hook>,
] as IItemStack[];

for item in triggersFishing {
    <tag:items:stardew_fishing:starts_minigame>.add(item);
}

# Remove Tags
val tagsToRemove = [
    <tag:worldgen/biome:biomemakeover:has_structure/ghost_town>,
    <tag:worldgen/biome:biomemakeover:has_structure/sunken_ruin>,
] as MCTag[];

for tag in tagsToRemove {
    tag.clear();
}