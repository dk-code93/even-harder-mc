// priority: 0

WorldgenEvents.remove(event => {
    event.printFeatures('', 'minecraft:swamp')
    event.printFeatures('', 'minecraft:badlands')
    event.printFeatures('', 'minecraft:dark_forest')
    event.printFeatures('', 'minecraft:mushroom_fields')
    event.removeFeatureById('raw_generation', [
        'immersive_weathering:fluvisol_patch_surface',
        'immersive_weathering:fluvisol_patch_dry',
        'immersive_weathering:humus_patch',
    ])
    event.removeFeatureById('local_modifications', [
        'biomemakeover:mesmerite_boulder',
    ])
    event.removeFeatureById('underground_ores', [
        'biomemakeover:mesmerite_underground',
        'biomemakeover:df_trees'
    ])
    event.removeFeatureById('top_layer_modification', [
        'biomemakeover:peat',
        'biomemakeover:reeds',
        'biomemakeover:itching_ivy',
    ])
    event.removeFeatureById('fluid_springs', [
        'biomemakeover:blighted_balsa_placed'
    ])
    event.removeFeatureById('vegetal_decoration', [
        'biomemakeover:swamp_cypress_trees_placed', 
        'biomemakeover:willow_trees_placed', 
        'biomemakeover:willow',
        'biomemakeover:swamp_flowers',
        'biomemakeover:small_and_flowered_pads',
        'biomemakeover:barrel_cactus',
        'biomemakeover:saguaro_cactus',
        'biomemakeover:wild_mushrooms',
        'biomemakeover:df_grass',
        'biomemakeover:df_tall_grass',
        'biomemakeover:df_flowers',
    ])
});