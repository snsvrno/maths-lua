# Maths
A lua library with easy to use math functions.

## Usage
Either get the source and build it with lmake, install it using lmake, or manually download the [Latest Release](https://github.com/snsvrno/tabletools-lua/releases/latest). Look at [Lmake](https://github.com/snsvrno/lmake-rs) for more information how to build.

Once in your project, just 'require' like you would any other source file.

```lua
M = require 'path.to.maths'
``` 

## Line Functions

### `.line.pointOnLine(x1,y1,x2,y2,distance)` -> `x,y`
Calculates a point on the line defined by the two points `(x1,y1)` and `(x2,y2)` distance `distance` away from the first point `(x1,y1)`. The resulting point does not have to be bounded by the two points.

***Inputs***
- **`x1`** : *Number* - the x value of the first point
- **`y1`** : *Number* - the y value of the first point
- **`x2`** : *Number* - the x value of the second point
- **`y2`** : *Number* - the y value of the second point
- **`distance`** : *Number* - the distance from the first point to the returned point

***Outputs***
- **`x`** : *Number* - the x value of the resulting point
- **`y`** : *Number* - the y value of the resulting point

## Number Functions

### `.number.round(no,decimalPlaces)` -> `roundedNumber`
An intelligent rounding function which uses mathmatical requirements when determining how to round a number.

`number` < 0.5 round down, `number` >= 0.5 round up.

***Inputs***
- **`no`** : Number - the number to round
- **`decimalPlaces`** : Int - the number of decimal places to use

***Outputs***
- **roundedNumber** : Number - the number rounded to the asked decimal places