# Phase 1: Game Logic

## Goal
To create the game logic for minesweeper

## Demo Game
| Demo Board |/|/|/|/|/|/|
|---|---|---|---|---|---|---|---|
|/|X|2|1|1|||
|/|1|2|X|1|1|1|
|/||1|1|1|1|X|
|/|||||1|1|1|

**Blank tile**: tile with no mine or number
- when clicked: unveils itself and all adjacent blank tiles and numbered tiles adjacent to uncovered blank tiles

**Numbered tile**: tile with a numeric value indicating the number of adjacent mines
- when clicked: unveils itself

**Mine tile**: tile with a mine
- when clicked: game ends

## Game States
**Active**: game is still being played. User can uncover tiles each turn
**Win**: user uncovers all non-mine tiles
**Lose**: user uncovers a mine

## Definitions
**Board**: a collection of tiles
**Tile**: a placeholder for the board that contains a number, mine, or blank
**Cover**: the state of a tile if it has not been selected by a user
**Uncover**: the state of a tile that has been selected by a user
**Turn**: each action the user makes 
**Effect** what happens when a tile is uncovered

## Game Logic
#### On game start
- create a gameboard that has all mines and numbers generated on it. This will be the "solution" board
- create a seperate game board for the user that shows them which tiles are covered/uncovered

## TODO
- [ ] Create a game board
- [ ] Create a "solutions" board
- [ ] Allow user to choose a move
- [ ] Action when user clicks on a tile
    - [ ] If user click on mine, game ends
    - [ ] If user clicks on blank tile, all adjacent blank and numbered blank-adjacent tiles are revealed
    - [ ] If user clicks on a numbered tile, the tile is revealed