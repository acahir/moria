## How do you create objects in wizard mode?

You will need the source; if you have only executables, get the source files constant.h and treasure.c from the archive, which contain the necessary definitions.  This is an explanation of some of the parameters.

- Tval: This is defined in constant.h; it is the value for the item type. For example, TV_WAND is 65.

- Tchar: The character used to represent this object; it should usually be proper for the item type.

- Subval: This identifies the specific item.  If you are duplicating an item from the item list, use the same subval (and tval) as that item; otherwise, don't.  Use subvals 0-63 for items that shouldn't stack, 64-127 for items that should always stack (potions and scrolls), 193 or more for items that are generated in a group, and should stack as that group (arrows).

- Weight: In tenths of a pound.

-P1: Used for all special bonuses which don't appear elsewhere: bonus to stats/searching/stealth/speed, which stat to sustain (warning: constitution is 4 and dexterity 5), tunneling value, food value, light value of a lamp, torch, or flask of oil.
 - For missiles, different values of P1 distinguish different groups of missiles; use small negative numbers if you create groups as a wizard. 
 - For bows, slings, and crossbows, the values identify the weapon type; use the same value that is used for the corresponding weapon in treasure.c.

- Flags: A hexadecimal number which contains:
 - for wearable items, all special effects (bits beginning with TR_ in
constant.h).
 - for chests, trap flags (CH_ bits in constant.h) and treasure flags (CM_ bits in constant.h).  The CM_WIN flag is cleared when you open a chest, so you can't create a chest with that bit set in order to get an instant win.
 - for potions/scrolls/staffs/wands, the effects of using the item (see the items in treasure.c).  Many potions have multiple effects (cure light wounds also cures blindness).  
 - for books, which spells are in the book (spell 1 is the units bit).

- Level: Level on which the item would be found.  This affects the difficulty of using wands and staffs.

The object will have no name, except for the inscription {wizard item}, and possibly a type name, such as "Potion of"; you can change the inscription.

