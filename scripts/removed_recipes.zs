#recipes.RemoveShaped(<buildinggadgets:destructiontool>);
recipes.remove(<buildinggadgets:destructiontool>);
recipes.addShaped(<buildinggadgets:destructiontool>, [[<quark:biotite_block>, <minecraft:redstone_block>, <quark:biotite_block>],
                                                      [<minecraft:iron_block>, <minecraft:redstone_block>, <minecraft:iron_block>],
                                                      [<quark:biotite_block>, <minecraft:diamond_block>, <quark:biotite_block>]]);
recipes.remove(<tconstruct:throwball:1>);
recipes.remove(<nuclearcraft:dominos>);
recipes.addShapeless(<nuclearcraft:dominos> * 2, [<ore:toolCuttingboard>,<ore:foodSupremepizza>,<ore:foodPepperoni>,<ore:toolPot>,<ore:foodGroundchicken>,<ore:foodMushroomsteak>,<ore:foodPorksausage>,<ore:cropBellpepper>,<ore:foodGarlicbread>]);
recipes.removeByMod("projectred-transportation");
recipes.addShapeless(<ore:dustElectrotine>, [<ore:dyeLightBlue>,<ore:dustRedstone>]);
