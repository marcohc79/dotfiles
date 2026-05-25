# Zathura — guía completa de atajos por defecto

> Chuleta de teclas por defecto de Zathura.
> Pensada para tener a mano mientras aprendés.
> Estilo general: muy parecido a Vim.

______________________________________________________________________

## 1) Movimiento básico

- `j` → bajar
- `k` → subir
- `h` → mover a la izquierda
- `l` → mover a la derecha

Alternativas con flechas:

- `Left` → izquierda
- `Right` → derecha
- `Up` → subir
- `Down` → bajar

______________________________________________________________________

## 2) Movimiento por páginas / saltos grandes

- `J` o `PgDn` → página siguiente
- `K` o `PgUp` → página anterior

Scroll por pantalla:

- `Space` → bajar una pantalla
- `Shift+Space` → subir una pantalla
- `BackSpace` → subir una pantalla

Scroll por media pantalla:

- `Ctrl+d` → bajar media pantalla
- `Ctrl+u` → subir media pantalla
- `Ctrl+t` → mover media pantalla a la izquierda
- `Ctrl+y` → mover media pantalla a la derecha

Scroll por pantalla completa lateral/vertical:

- `Ctrl+f` → bajar una pantalla
- `Ctrl+b` → subir una pantalla
- `t` → mover una pantalla a la izquierda
- `y` → mover una pantalla a la derecha

______________________________________________________________________

## 3) Ir a posiciones concretas

- `gg` → ir al inicio del documento
- `G` → ir al final del documento
- `nG` → ir a la página `n`
  - ejemplo: `25G`

Dentro de la página actual:

- `H` → ir al tope de la página actual
- `L` → ir al final de la página actual

Ajuste visual a la página actual:

- `P` → “snap” a la página actual

______________________________________________________________________

## 4) Historial de saltos

- `Ctrl+o` → volver atrás en la jump list
- `Ctrl+i` → ir hacia adelante en la jump list

Entre los últimos dos puntos de salto:

- `Ctrl+j` → bisectar hacia adelante
- `Ctrl+k` → bisectar hacia atrás

______________________________________________________________________

## 5) Zoom y ajuste de vista

Zoom:

- `+` → acercar
- `-` → alejar
- `=` → volver al zoom original

Alternativas estilo `z`:

- `zI` → acercar
- `zO` → alejar
- `z0` → zoom original

Zoom exacto:

- `n=` → fijar zoom a `n`
  - ejemplo: `150=`

Ajustes automáticos:

- `a` → ajustar a mejor encaje (best-fit)
- `s` → ajustar al ancho

______________________________________________________________________

## 6) Modos de visualización

- `d` → activar/desactivar vista de doble página
- `D` → cambiar la columna de apertura en doble página
- `F11` → entrar/salir de fullscreen
- `F5` → entrar/salir de presentation mode

Rotación y recarga:

- `r` → rotar 90°
- `R` → recargar el documento
- `Ctrl+r` → recolor / invertir escala de grises

Barras:

- `Ctrl+m` → mostrar/ocultar inputbar
- `Ctrl+n` → mostrar/ocultar statusbar

______________________________________________________________________

## 7) Búsqueda

- `/texto` → buscar hacia adelante
- `?texto` → buscar hacia atrás
- `n` → siguiente coincidencia
- `N` → coincidencia anterior

Cancelar:

- `Esc` → cancelar búsqueda / ocultar notificaciones / abortar
- `Ctrl+c` → abortar acción actual

______________________________________________________________________

## 8) Índice / tabla de contenidos

- `Tab` → mostrar índice y entrar en Index mode

### Dentro de Index mode

Movimiento:

- `j` / `Down` → entrada siguiente
- `k` / `Up` → entrada anterior
- `Ctrl+d` → bajar media pantalla en el índice
- `Ctrl+u` → subir media pantalla en el índice
- `gg` → primera entrada
- `G` → última entrada

Expandir / contraer:

- `l` / `Right` / `zo` → expandir entrada

- `zO` → expandir entrada recursivamente

- `L` / `zR` → expandir todo

- `h` / `Left` / `zc` → contraer entrada

- `zC` → contraer recursivamente

- `H` / `zM` → contraer todo

Abrir entrada:

- `Space` → abrir entrada
- `Enter` → abrir entrada
- `Ctrl+j` → abrir entrada

Salir del índice:

- `Tab` → cerrar índice
- `Esc` → cerrar índice
- `Ctrl+[` → cerrar índice
- `Ctrl+c` → cerrar índice

______________________________________________________________________

## 9) Enlaces

- `f` → seguir enlace
- `F` → mostrar destino del enlace
- `c` → copiar destino del enlace al portapapeles

______________________________________________________________________

## 10) Marcas rápidas (quickmarks)

Guardar marca:

- `mX` → guardar una quickmark en `X`
  - ejemplo: `ma`

Ir a marca:

- `'X` → ir a la quickmark `X`
  - ejemplo: `'a`

Ejemplo típico:

- `ma` → guarda la posición actual como marca `a`
- `'a` → vuelve a esa posición

______________________________________________________________________

## 11) Abrir / cerrar

- `o` → abrir documento
- `O` → abrir documento
- `q` → salir

______________________________________________________________________

## 12) Línea de comandos

- `:` → abrir la línea de comandos

Comandos útiles:

- `:open` o `:o` → abrir archivo
- `:close` → cerrar documento
- `:quit` o `:q` → salir
- `:print` → imprimir
- `:info` → mostrar información del documento
- `:version` → mostrar versión

Búsqueda resaltada:

- `:hlsearch` → resaltar coincidencias actuales
- `:nohlsearch` o `:nohl` → quitar resaltado

Bookmarks internos:

- `:bmark` → guardar bookmark
- `:bdelete` → borrar bookmark
- `:blist` → listar bookmarks
- `:bjump` → saltar a bookmark

Quickmarks:

- `:mark` → crear quickmark
- `:delmarks` o `:delm` → borrar quickmarks

Saltos:

- `:jumplist` → mostrar lista de saltos recientes

Otros:

- `:offset` → cambiar offset de páginas
- `:write` / `:write!` → guardar documento
- `:save` / `:save!` → alias de write
- `:dump` → volcar configuración/valores actuales a un archivo
- `:source` → cargar un archivo de configuración
- `:export` → exportar adjuntos
- `:exec` o `:!` → ejecutar un comando externo

______________________________________________________________________

## 13) Fullscreen mode

En fullscreen, las teclas por defecto son:

- `J` / `K` → página siguiente / anterior
- `Space` → bajar una pantalla
- `Shift+Space` → subir una pantalla
- `BackSpace` → subir una pantalla
- `gg` → inicio del documento
- `G` → final del documento
- `nG` → ir a página `n`
- `+` / `-` / `=` → zoom
- `zI` / `zO` / `z0` → zoom
- `n=` → zoom exacto
- `F11` → volver al modo normal
- `Esc` / `Ctrl+c` → abortar
- `q` → salir

______________________________________________________________________

## 14) Presentation mode

En presentation mode, por defecto:

- `Space` → avanzar una pantalla
- `Shift+Space` → retroceder una pantalla
- `BackSpace` → retroceder una pantalla
- `F5` → volver al modo normal
- `Esc` / `Ctrl+c` → abortar
- `q` → salir

______________________________________________________________________

## 15) Mouse

- rueda del mouse → scroll arriba/abajo
- `Ctrl + rueda` → zoom
- arrastrar con botón medio → pan
- click izquierdo → seguir enlace
- arrastrar con botón izquierdo → seleccionar texto
- `Shift + arrastrar botón izquierdo` → resaltar región
- click derecho → menú contextual para copiar/guardar imagen
  - solo si la imagen es reconocida por `export`

______________________________________________________________________

## 16) Patrones que conviene memorizar

### Navegación mínima

- `j k`
- `h l`
- `J K`
- `gg G`
- `25G`

### Búsqueda

- `/texto`
- `n`
- `N`
- `Esc`

### Zoom

- `+`
- `-`
- `=`
- `a`
- `s`

### Índice

- `Tab`
- `j k`
- `l h`
- `Enter`
- `Esc`

### Marcas

- `ma`
- `'a`

______________________________________________________________________

## 17) Chuleta ultra corta

- `j k h l` → mover
- `J K` → página sig/anterior
- `gg G` → inicio/final
- `nG` → ir a página `n`
- `/` `?` `n` `N` → buscar
- `+ - =` → zoom
- `a s` → ajustar vista
- `Tab` → índice
- `f` → seguir enlace
- `:` → comandos
- `q` → salir

______________________________________________________________________

## 18) Consejos para aprenderlo sin volverte loco

Aprendé primero solo esto:

1. `j k`
1. `J K`
1. `gg G`
1. `/`, `n`, `N`
1. `+`, `-`, `=`
1. `a`, `s`
1. `Tab`
1. `q`

Después sumá:

- `ma` / `'a`
- `f`
- `F11`
- `F5`
- `Ctrl+o` / `Ctrl+i`

______________________________________________________________________

## 19) Nota importante

Estos son los **defaults** de Zathura.
Si después remapeás teclas en `~/.config/zathura/zathurarc`, pueden cambiar.

Ejemplo de remapeo (no default):

```conf
map p navigate previous
map n navigate next
```
