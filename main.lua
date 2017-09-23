-- User: Null Pointer Seven
-- Date: 12/09/2017

function first_separator()
  print("══════════════════════════════════════════════════════\n")
end

function last_separator()
  print("\n══════════════════════════════════════════════════════")
end

function middle_separator()
  print("────────────────────────────────────────────────────────")
end

function calcula(number_base)
  return number_base^210
end

function pedos()
  return "prrrrrr prrrrrr"
end

function fact(n)
  result=1
  for i=n,1,-1 do
    result=result*i
  end
  return result
end

function build_table(x, y)
  io.write("┌─" ..string.rep("─",y*2).. "┐\n")
  for i=1,x,1 do
    io.write("│")
    for j=1,y,1 do
      io.write(" ".. math.random(9))
    end
    print(" │")
  end
  io.write("└─" ..string.rep("─",y*2).. "┘\n")
end

first_separator()

--print("Resultado 1: ".. pedos())

--middle_separator()

--print("Resultado 2: " .. fact(3))

--middle_separator()

print("Resultado 3:\n")
build_table(8,4)

last_separator()