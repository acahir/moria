uMoria
=====

[uMoria](https://en.wikipedia.org/wiki/Moria_(video_game)) is a rogue-like dungeon exploration game, ported to run on the various flavors of unix. 

## Changes

#### v5.6.1b1 
The latest code revision include several new features and some maintenance and cleanup of the code base.

Added two new in-game options
:
- Disable haggling - no haggling in any store for buying or selling
- Easy/Quick Mode - changes some odds in player's favor. Allows faster games
	- doubles chance of getting a special item 
	- increased odds of casting Identity spell
	- increased odds of detecting magic items in inventory
	- ensures a list of base supplies are always available in stores
		(indenty, word-of-recall, food ration, oil, etc)
	- increases the price limits in some stores

Added initial color support
	- Minimally tested fuction in no color support env
	- Added colors for most items and monsters
	- Additional improvements possible by adding color to...
		- inventory, Char description screen, stats, messages, etc

Added Makefile for Mac OS x

Disenchant creatures can no longer affect item bonuses that can't 
be re-enchanted. For example, Gauntlets of Slaying toHit or toDam, 
or toAC on weapons. Seemed unfair to be able to loose without ability
to regain.

Improved odds for boots of speed, as they were one of the rarest items in the game.

Cleaned up compiler warnings for C99.

Reformatted all source using clang-format based off the llvm style. 

Possible future improvements:
	- remove MAC code? no longer relevant and messy
	- ability to choose character color


## Motivation

This code is built on top of umoria 5.6, the most recent version available. The main purpose for this project was to refresh some c programming skills, and modify the program to remove the dreaded haggling in stores. Cleaning up the code and clean compiles on Mac OS X followed along with several other enhancements.

## Motivation

## Installation

Provide code examples and explanations of how to get the project.

## Resources

Show what the library does as concisely as possible, developers should be able to figure out **how** your project solves their problem by looking at the code example. Make sure the API you are showing off is obvious, and that your code is short and concise.

## License

A short snippet describing the license (MIT, Apache, etc.)
