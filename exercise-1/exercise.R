### -------------------- Exercise 1: Creating data frames --------------------

## Create a vector of the number of points the Seahawks scored in the first 5 games
## Hint: google "Seahawks scores", or check the football database:
## http://www.footballdb.com/teams/nfl/seattle-seahawks/results
## here 'Result' displays scores, 'L' stands for loss, 'W' for win

  first_five_points = c(9,12,27,46,16)

## Create a vector of the number of points the Seahawks have allowed to be scored against them in the
## first 5 games

  first_five_given = c(17,9,33,18,10)

## Combine your two vectors into a dataframe

  points = data.frame(first_five_points, first_five_given)

## Create a new column "diff" that is the difference in points

  diff = abs(first_five_points - first_five_given)
  points$difference = diff
  
## Create a new column "won" which is TRUE if the Seahawks won

  won = first_five_points > first_five_given
  points$won = won

## Create a vector of the opponents name (such as "Atlanta Falcons")

  opponent = c("Packers", "SF 49ers", "Titans", "Colts", "Rams")

## Add the vector of opponents into the data frame

  points$opponent = opponent