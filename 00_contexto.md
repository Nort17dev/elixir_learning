# Introducción a Elixir

## ¿Qué es Elixir?
Elixir es un **lenguaje de programación funcional** que corre sobre la **máquina virtual de Erlang (BEAM)**.  
Fue creado por **José Valim** en 2011 con el objetivo de ofrecer un lenguaje moderno, productivo y fácil de mantener, sin perder las capacidades de concurrencia, tolerancia a fallos y escalabilidad que caracterizan a Erlang.  
Elixir es ampliamente usado para aplicaciones distribuidas, sistemas en tiempo real y desarrollo web (principalmente con el framework **Phoenix**).

---

## Tipos de datos en Elixir
Elixir es **dinámicamente tipado** y cuenta con varios tipos de datos básicos:
- **Números**
  - Enteros: `1`, `100`, `-50`
  - Flotantes: `3.14`, `-0.5`
- **Booleanos**: `true`, `false`
- **Átomos**: valores constantes nombrados, p. ej. `:ok`, `:error`
- **Cadenas**: `"Hola mundo"`
- **Listas**: `[1, 2, 3]`
- **Tuplas**: `{1, "a", :ok}`
- **Mapas**: `%{nombre: "Aarón", edad: 25}`
- **Structs**: estructuras derivadas de mapas que representan entidades (`%User{}`)

---

## Paradigmas de programación
Elixir es principalmente **funcional** e **inmutable**:
- **Programación funcional**: funciones puras, inmutabilidad, uso intensivo de recursión.  
- **Concurrente**: basado en el modelo de actores de Erlang (procesos ligeros).  
- **Distribuido**: soporta ejecución de procesos en múltiples nodos fácilmente.  
- **Metaprogramación**: macros para extender el lenguaje.  

---

## Estructuras de datos
- **Listas** (`[1, 2, 3]`) → secuencias ordenadas.  
- **Tuplas** (`{:ok, "resultado"}`) → colección fija, útil para valores múltiples.  
- **Mapas** (`%{a: 1, b: 2}`) → clave-valor.  
- **Structs** → basados en mapas, usados para representar entidades.  
- **Keyword lists** (`[a: 1, b: 2]`) → listas especiales con tuplas de dos elementos.  

---

## Gestor de paquetes
Elixir usa **Mix** como gestor de proyectos y **Hex** como repositorio de paquetes.  
- Crear proyecto: `mix new nombre_proyecto`  
- Añadir dependencias en `mix.exs`  
- Instalar dependencias: `mix deps.get`

---

## Similitudes y diferencias con JavaScript

### Similitudes
- Ambos son **dinámicamente tipados**.  
- Manejan **funciones de orden superior** (funciones como valores).  
- Soportan **funciones anónimas**.  
- Uso de **pipelines** o *chaining* (`|>` en Elixir, `.` en JS).  

### Diferencias
- **Paradigma**:  
  - JS es multiparadigma (imperativo, orientado a objetos y funcional).  
  - Elixir es puramente funcional e inmutable.  
- **Concurrencia**:  
  - JS usa un **event loop** de un solo hilo (async/await, promesas).  
  - Elixir usa **procesos ligeros** (millones en paralelo) gracias a la VM de Erlang.  
- **Ecosistema**:  
  - JS → npm/yarn.  
  - Elixir → Mix/Hex.  
- **Sintaxis**:  
  - JS se parece a C/Java.  
  - Elixir se parece más a Ruby en estilo, pero con semántica funcional.  

---

## Cómo correr código Elixir sin usar `iex`
Existen varias formas de ejecutar código Elixir directamente desde un archivo sin entrar a la consola interactiva:

1. **Ejecutar un archivo `.exs`** (script):  
   ```bash
   elixir archivo.exs
