for $p in doc("C:\Users\EUSA CCS\OneDrive - CAMPUS CAMARA SEVILLA SAU\Documentos\2025_2026\LDM\LMSGI\XQuery\Ejercicio\catalogo.xml")//contenido[@id="c02"]
return replace value of node $p/visualizaciones 
       with ($p/visualizaciones + 10000)