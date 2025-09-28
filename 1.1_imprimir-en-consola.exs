# Para poder ver en consola lo que queramos,
# usamos IO.puts

IO.puts("Hola Mundo!")

IO.puts(~c'aaaaaaaa') # Esto funciona, porque ~c crea una lista de caracteres

# IO.puts(aaaaaaaa) #! Esto da error, porque aaaaaaaa no está definido

IO.puts(false && true)

IO.puts(2 + 2 * 2) # Operaciones matematicas tambien funcionan
