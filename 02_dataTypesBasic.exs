# Tipos de datos básicos:

#* Enteros / Integers: los numeros de toda la vida

133
233
233
222

#* Flotantes / Float: numeros decimales, Elixir no acepta decimales sin un digito antes del "."

12.34
2.2
0.2   # Es mejor esto, a escribir ".2"

#* Booleanos / Booleans: verdadero o falso (en minusculas)

true
false

#* Atomos / Atoms : El primer tipo de dato nuevo, este dato equivale al nombre con el que fue escrito
# La sintaxis es -> :atom_name (sí, con los dos puntos ":")

# ! Puntos a tomar:
# 1. No importa si escribes los boolean en forma de atomo o no, son lo mismo
# 2. Los modulos de Elixir(proximamente lo veremos) o de Erlang, también son atomos

:MyAtom # Asi se declara
:atomo

IO.puts(:MyAtom == :atomo) # false, porque son distintos átomos

IO.puts(:true === true) # true

#* Cadenas / Strings: Texto en comillas dobles

"Hola soy un texto"
"ZaZaa"
"Noches buenas"

# Las cadenas soportan saltos de línea y secuencias de escape:

"foo\nbar"


myVariable = false

IO.puts("My variable is #{myVariable}")
