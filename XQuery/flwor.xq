declare namespace file = "http://expath.org/ns/file";

let $inventario := doc("C:\Users\EUSA CCS\OneDrive - CAMPUS CAMARA SEVILLA SAU\Documentos\2025_2026\LDM\LMSGI\XQuery\inventario.xml")
let $mi_web := 
  <html>
    <head>
      <title>Catálogo de Hardware</title>
      <style>
        .sin-stock {{ color: red; font-weight: bold; }}
        table {{ border-collapse: collapse; width: 60%; font-family: sans-serif; }}
        th, td {{ border: 1px solid #dddddd; padding: 8px; text-align: left; }}
        th {{ background-color: #f2f2f2; }}
      </style>
    </head>
    <body>
      <h2>Estado del Almacén - HardwareTech</h2>
      <table>
        <tr>
          <th>Producto</th>
          <th>Categoría</th>
          <th>Precio</th>
          <th>Disponibilidad</th>
        </tr>
        {
          (: Aquí empieza el bucle FLWOR dentro del HTML :)
          for $p in $inventario//producto
          let $nombre := $p/nombre
          let $cat := data($p/@categoria)
          let $precio := $p/precio
          let $stock := xs:integer($p/stock)
          order by $cat ascending
          return
            <tr>
              <td>{ $nombre }</td>
              <td style="text-transform: capitalize;">{ $cat }</td>
              <td>{ $precio } €</td>
              <td>
                {
                  (: Lógica condicional para el stock :)
                  if ($stock = 0) then
                    <span class="sin-stock">¡Agotado!</span>
                  else
                    <span>{ $stock } uds. en almacén</span>
                }
              </td>
            </tr>
        }
      </table>
    </body>
  </html>
  
return file:write("C:\Users\EUSA CCS\OneDrive - CAMPUS CAMARA SEVILLA SAU\Documentos\2025_2026\LDM\LMSGI\XQuery\informe_almacen.html", $mi_web)