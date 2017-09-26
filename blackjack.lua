-- User: Null Pointer Seven
-- Date: 22/09/2017

-- VARIABLES --

randomNames={"Harvey", "Collen", "Tim", "Nelia", "Claretha", "Candie", "Golda", "Jestine", "Nancy", "Donte", "Jefferey", "Chloe", "Hans", "Amelia", "Meda", "Beryl", "Keisha", "Marisha", "Liza", "Marva", "Clement", "Isaiah", "Arla", "Jonas", "Loree", "Tommie", "Sharie", "Deb", "Jesse", "Thanh", "Shanta", "Buford", "Tameka", "Beula", "Lucina", "Aileen", "Twanna", "Marybeth", "Cheri", "Jeana", "Antionette", "Kenneth", "Miesha", "Genaro", "Marlana", "Mira", "Bryanna", "Virgie", "Sharilyn", "Marian"}
players={
  ["names"]={},
  ["score"]={}
}
cards={
  "A_clubs","2_clubs","3_clubs","4_clubs","5_clubs","6_clubs","7_clubs","8_clubs","9_clubs","10_clubs","J_clubs","Q_clubs","K_clubs",
  "A_spades","2_spades","3_spades","4_spades","5_spades","6_spades","7_spades","8_spades","9_spades","10_spades","J_spades","Q_spades","K_spades",
  "A_diamonds","2_diamonds","3_diamonds","4_diamonds","5_diamonds","6_diamonds","7_diamonds","8_diamonds","9_diamonds","10_diamonds","J_diamonds","Q_diamonds","K_diamonds",
  "A_hearts","2_hearts","3_hearts","4_hearts","5_hearts","6_hearts","7_hearts","8_hearts","9_hearts","10_hearts","J_hearts","Q_hearts","K_hearts"
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

-- FUNCIÓN POR MODIFICAR
function selectPlayerName()
  local name="Guillermo"
  --print("Introduce tu nombre: ")
  --local name=io.read()
  return name
end

function bets()
  
end

function dealCards()
  
end

function playersRound()
  
end

function checkMoves()
  
end

function distributeBetting()
  
end


-- MAIN BLOCK PROGRAM --

initializePlayersVariable(numberOfPlayers)

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
