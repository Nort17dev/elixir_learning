# 📂 Archivos .ex

* Se usan para código que será compilado.

* Al ejecutar `elixirc archivo.ex`, Elixir genera archivos `.beam` en el directorio `_build` o en la carpeta actual.

* Son ideales para módulos, librerías y proyectos (lo que va dentro de un proyecto Mix).

* Normalmente contienen definiciones de módulos (`defmodule`, funciones, structs, etc.), no código que se ejecute de inmediato.

Ejemplo (`math.ex`):

```elixir
defmodule Math do
  def suma(a, b), do: a + b
end
```

Después de compilarlo con `elixirc math.ex`, se genera un `Elixir.Math.beam`, que puedes cargar en `iex`:

```elixir
iex> Math.suma(2, 3)

5
```

# 📂 Archivos .exs

* Se usan para scripts o código que quieres ejecutar directamente sin compilar.

* Al correr `elixir archivo.exs`, se interpreta línea por línea y se ejecuta cada vez que lo llamas.

* Útil para pruebas rápidas, scripts y ejemplos.

* El código no se guarda en `.beam`, así que no queda persistente en la VM.

Ejemplo (`hola.exs`):

```elixir
IO.puts("Hola mundo!")
```

Correrlo:

```elixir
elixir hola.exs
```

Salida:

```elixir
Hola mundo!
```

# Entonces, ¿por qué `elixir unArchivo.ex` funciona?

* Porque el comando elixir puede interpretar tanto .ex como .exs, aunque la práctica recomendada es:

    * `.ex` → para módulos/librerías (código compilado, proyectos serios).
    
    * `.exs` → para scripts o código inmediato (no persiste).

Cuando ejecutas `elixir unArchivo.ex`, en realidad lo está interpretando como un script temporal, similar a `.exs`. No rompe nada, pero no se comporta igual que compilarlo con `elixirc`, ya que no genera los `.beam`.

# En resumen:

Usa `.ex` para código de módulos/proyectos (compilado).

Usa `.exs` para scripts o pruebas rápidas (interpretado).

Si corres elixir archivo.ex, funciona como script, pero no compila en .beam.