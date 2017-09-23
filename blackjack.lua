-- User: Null Pointer Seven
-- Date: 22/09/2017

-- VARIABLES --

randomNames={"Harvey", "Collen", "Tim", "Nelia", "Claretha", "Candie", "Golda", "Jestine", "Nancy", "Donte", "Jefferey", "Chloe", "Hans", "Amelia", "Meda", "Beryl", "Keisha", "Marisha", "Liza", "Marva", "Clement", "Isaiah", "Arla", "Jonas", "Loree", "Tommie", "Sharie", "Deb", "Jesse", "Thanh", "Shanta", "Buford", "Tameka", "Beula", "Lucina", "Aileen", "Twanna", "Marybeth", "Cheri", "Jeana", "Antionette", "Kenneth", "Miesha", "Genaro", "Marlana", "Mira", "Bryanna", "Virgie", "Sharilyn", "Marian"}
players={}


-- FUNCTIONS --

function selectPlayers(numberOfPlayers)
  print(#randomNames)
  for i=0,numberOfPlayers-1,1 do
    players["names"]=randomNames[math.random(#randomNames)]
    print(players["names"])
  end  
end

function printPlayersName()
  for i=0,#players["names"],1 do
    print(players["names"])
  end
end


function isGameFinished()
  
  return true
  
end


-- MAIN BLOCK PROGRAM --
-- Default number of players: 3
selectPlayers(3)

printPlayersName()

while isGameFinished()==false do
  
end
