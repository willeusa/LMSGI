declare namespace file = "http://expath.org/ns/file";

(: 1. Generamos toda la estructura HTML y la guardamos en una variable :)
let $html_final := 
  <html>
    <head>
      <title>Catálogo de Biblioteca 2026</title>
      <meta charset="UTF-8"/>
    </head>
    <body>
      <h1>Listado de Libros Actualizado</h1>
      <ul>
      {
        for $l in //libro
        let $titulo := data($l/titulo)
        let $anyo := number($l/publicacion)
        let $precio := number($l/precio)
        return
          <li>
            <strong>{ $titulo }</strong> 
            { if ($anyo > 2022) then <span style="color:red"> (¡Novedad!)</span> else () }
            - { $precio }€
          </li>
      }
      </ul>
    </body>
  </html>

(: 2. Generamos el resultado en un archivo físico :)
(: Importante: Ajustar la ruta según el sistema (Windows/Linux) :)
return file:write("C:/Users/willm/OneDrive - CAMPUS CAMARA SEVILLA SAU/Documentos/2025_2026/LDM/LMSGI/XQuery/Taller01/listado_libros.html", $html_final)