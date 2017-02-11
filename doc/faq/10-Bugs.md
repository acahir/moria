## Bugs

Bugs can be reported at https://github.com/acahir/moria/issues


#### Older Information

When you are reporting a suspected bug, make sure to give the version number and the system.  The bug report can be posted here or sent to me. If someone else maintains the game on your machine, the bug report should also be sent to him or her; the bug may be in a change on your machine but not in my code.

If you have a patch for the bug, it would be best to send the patch by Email, so that I can check the patch before releasing it.

If you report a bug which has been fixed in the current version, I may be able to send you a patch, or at least tell you that you can fix the bug by upgrading.  If the bug hasn't been fixed, a good bug report may make it easy to fix.

The following bugs have been reported with some frequency.  Fixes are included where known; for 5.x versions, and 4.8x if you don't have a character you need to preserve, the best fix is to upgrade.  All versions are Umoria unless indicated otherwise.

All versions: Occasional rooms are created with no exit.  The only attempt to fix this bug introduced others and had to be undone.

4.87-5.2.2: The game locks up if you wait in place for about 10,000 turns.  This can be fixed in the source; in the function compact_monsters() in misc1.c, change "if (cur_dis > m_ptr.cdis)" to "if (cur_dis < m_ptr.cdis)".  If you can't fix the bug, leave the level if you see lots of "Compacting monsters..." messages.

4.87-5.2.1: Your carrying capacity decreases.  This cannot be fixed for an individual character without hacking the savefile, or modifying the program to fix the savefile.  To avoid it, don't use spikes, and don't fight while wielding arrows in 4.87.

5.1.0-5.2.0: Invisible monsters which don't move or attack are sometimes created.  Get off the level if you see one.

4.87: Monsters sometimes chase you in the wrong direction.  

4.87: Wands/spells of polymorph and drain life work only when you are adjacent to the monster.

4.85: Several annoying bugs still exist, but this version is at least playable.

4.83: Many bugs.  Upgrade.

Druid: Potions of Healing can heal you above your maximum hit points.

OS/2 Moria: Erick the Honest takes over all the stores eventually, and refuses to stock expensive items.  This cannot be fixed by transferring a character from OS/2 to other versions.

Amiga Moria 3.0: Some items make you extremely fast (and hungry).

Amiga Moria 3.0: The system crashes when you leave the game, because it tries to close the screen without deactivating it.  Jump to the workbench screen _instantly_ as the save (or exit) commences via [left amiga + N] and activate the workbench screen via a mouseclick or [alt + left amiga] (the keyboard shortcut for a mouse-click).