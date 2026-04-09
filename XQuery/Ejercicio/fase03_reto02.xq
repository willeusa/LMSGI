for $p in //contenido[@id="c02"]
return replace value of node $p/visualizaciones 
       with ($p/visualizaciones + 10000)