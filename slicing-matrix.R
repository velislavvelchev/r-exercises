chess.t <- t(chess)
turn <- c(3, 5, 2, 2, 7, 4, 6, 5, 2, 1)


chess.t <- rbind(chess.t, "Turn" = turn)
chess <- t(chess.t)


# extract specific element
chess[6, 2]

# the first two columns
chess[, 1:2]
# or
chess[, -3]
# or
chess[, c("Player", "Piece")]

# all the info for the dark player
chess[1:5, ]

# extract exact column
chess[, 2, drop = FALSE]

# drop column with -
chess[, -2]

# extract row but omit some things
chess[2, c(1, 3)]

# replace
chess[7, 3] <- 3
chess[7, 3]
