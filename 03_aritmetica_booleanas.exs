
#! Aritmética:

# Suma "+"

1 + 2
12324 + 24

# Resta "-"

24 - 3
457 - 1

# Multiplicación "*"

24 * 2
288 * 54

# División "/" (puede devolver decimales)

IO.puts(32 / 3)
10 / 2 # 5.0
10 / 5 # 2.0

# División "div(a, b)" (devuelve enteros, sin importar si son decimales o no)

div(10, 3) # 3
div(5, 2) # 2

# Modulo "rem(a, b)"

rem(10, 3) # 1

#! Operaciones logicas (booleanos):
# Elixir tiene los 3 operadores logicos basicos: AND (&&), OR (||), NOT (!)

#* AND (&&): devuelve true si ambos operandos son verdaderos
IO.puts("Hola" && 13)   # da 13 porque "Hola" es distinto de false y nil
IO.puts(-42 && true)    # true  porque -42 es distinto de false y nil
IO.puts(false && true)  # false

#* OR (||): devuelve true si al menos uno de los operandos es verdadero
IO.puts(true || false)  # true
IO.puts(false || false) # false
IO.puts(-20 || true)    # -20 porque es distinto de false y nil

#* NOT (!): invierte el valor logico
IO.puts(!23 && true)    # false porque !23 es false
IO.puts(!594)           # false porque 594 es distinto de false y nil
IO.puts(!nil)           # true porque nil es false


#! Operaciones logicas cuyo cuyo primer argumento tiene que ser un booleano:
# Estas operaciones son utiles para validar que un valor es booleano

#* and
IO.puts(true and 23) # 23 porque true es verdadero
true and false       # false
nil and true         # nil porque nil es false

#* or
false or true        # true
false or nil         # nil porque nil es false
true or 42           # true porque true es true
23 or false          # falla porque 23 no es booleano

#* not
not true             # false
not 24               # falla porque 24 no es booleano
not false            # true
