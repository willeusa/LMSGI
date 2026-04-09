let $nuevo_contenido := 
  <contenido id="c04" tipo="pelicula" estado="activo">
    <titulo>La Venganza del CSS</titulo>
    <genero>Terror</genero>
    <duracion>95</duracion>
    <visualizaciones>0</visualizaciones>
    <valoracion>5.0</valoracion>
  </contenido>

return insert node $nuevo_contenido as last into /catalogo