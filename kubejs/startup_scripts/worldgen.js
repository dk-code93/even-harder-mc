// priority: 0

WorldgenEvents.remove(event => {
    event.printFeatures('', 'minecraft:swamp')
    event.printFeatures('', 'minecraft:badlands')
    event.printFeatures('', 'minecraft:dark_forest')
    event.printFeatures('', 'minecraft:mushroom_island')
    event.removeFeatureById('local_modifications', [
        'biomemakeover:mesmerite_boulder',
    ])
    event.removeFeatureById('underground_ores', [
        'biomemakeover:mesmerite_underground',
        'biomemakeover:df_trees'
    ])
    event.removeFeatureById('vegetal_decoration', [
        'biomemakeover:swamp_cypress_trees_placed', 
        'biomemakeover:willow_trees_placed', 
        'biomemakeover:willow',
        'biomemakeover:barrel_cactus',
        'biomemakeover:saguaro_cactus',
    ])
});