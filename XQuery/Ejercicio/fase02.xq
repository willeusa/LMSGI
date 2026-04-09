for $c in doc("C:\Users\EUSA CCS\OneDrive - CAMPUS CAMARA SEVILLA SAU\Documentos\2025_2026\LDM\LMSGI\XQuery\Ejercicio\catalogo.xml")//contenido
let $visitas := number($c/visualizaciones)
where $visitas > 50000
order by $visitas descending
return 
  <exito>
    { $c/titulo }
    <visitas>{ $visitas }</visitas>
  </exito>