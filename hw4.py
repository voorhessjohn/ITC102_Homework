'''I Built this program to draw a random walk within 200 pixels of its origin point as part of my python training. Pretty fun! ''' 

import turtle
import random
wn = turtle.Screen()
alice = turtle.Turtle()

def distBtwPts(x1, y1, x2, y2):
    asq = (x2 - x1)**2
    bsq = (y2 - y1)**2
    dist = math.sqrt(asq + bsq)
    return dist

def randomWalkInBounds():
    startx, starty = alice.position() #get start position
    moves = 0 #moves counter
    dist = 0 #initialize distance from start
    while dist < 190: #go no more than 190 from start, so can't go out of bounds.
        turn = random.randrange(-360, 360)
        alice.lt(turn)
        alice.fd(10)
        moves += 1
        endx, endy = alice.position() #get new position
        dist = distBtwPts(startx, starty, endx, endy) #update distance from start
    print('Times moved:', moves)
