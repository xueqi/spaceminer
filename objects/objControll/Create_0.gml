/// @description

// create a 2D array to hold the object in map. Does not contain the vehicle

nrows = 7
ncols = 10

mapObjects = ds_grid_create(nrows, ncols)


STONE=1
GOLD=2
TREASURE=3
PART1=4
PART2=5
EXIT=6
EXITOPEN=7
PART_BANNER = 8
GOLD_BANNER = 9
FUEL_BANNER = 10
UTIL_BANNER = 11
STAR_BANNER = 12
STAR_FULL = 13
STAR_EMPTY = 14

current_util = 15
no_util = 15
DYNAMITE = 16
BOMB = 16

PART3  = 17
PART4 = 18
blockHeight = 79
blockWidth = 79
top = 50
left = 2


// level variables

gold = 0
part = 0
item = 0

totalParts = 2
totalFuel = 99
fuel = totalFuel
exitItem = 0

