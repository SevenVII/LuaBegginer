-- User: Null Pointer Seven
-- Date: 22/09/2017

-- VARIABLES --

randomNames={"Harvey", "Collen", "Tim", "Nelia", "Claretha", "Candie", "Golda", "Jestine", "Nancy", "Donte", "Jefferey", "Chloe", "Hans", "Amelia", "Meda", "Beryl", "Keisha", "Marisha", "Liza", "Marva", "Clement", "Isaiah", "Arla", "Jonas", "Loree", "Tommie", "Sharie", "Deb", "Jesse", "Thanh", "Shanta", "Buford", "Tameka", "Beula", "Lucina", "Aileen", "Twanna", "Marybeth", "Cheri", "Jeana", "Antionette", "Kenneth", "Miesha", "Genaro", "Marlana", "Mira", "Bryanna", "Virgie", "Sharilyn", "Marian"}
players={
  ["names"]={},
  ["score"]={}
}
-- Max players: 7
numberOfPlayers=3

-- FUNCTIONS --

function initializePlayersVariable(numberOfPlayers)
  math.randomseed(os.time())
  players["names"][1]=selectPlayerName()
  for j=2,4 do
    players["names"][j]=randomNames[math.random(#randomNames)]
  end
end

function printPlayersName()
  for i=1,#players["names"],1 do
    print(players["names"][i])
  end
end

function isGameFinished()
  
  return true
  
end

function selectPlayerName()
  local name=Guillermo
  --print("Introduce tu nombre: ")
  --local name=io.read()
  return name
end


-- MAIN BLOCK PROGRAM --

initializePlayersVariable(numberOfPlayers)

--printPlayersName()

while isGameFinished()==false do
  -- Apuestas jugadores
  bets()
  -- Se reparten cartas
  dealCards()
  -- Turno de los jugadores
  playersRound()
  -- Comprobar apuestas de jugadores
  checkMoves()
  -- Reparto bote de apuestas perdidas/ganadas/empatadas
  distributeBetting()
end
