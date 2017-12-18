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

blockHeight = 79
blockWidth = 79
top = 50
left = 2


// level variables

gold = 0
fuel = 0
part = 0
item = 0

totalParts = 2

exitItem = 0