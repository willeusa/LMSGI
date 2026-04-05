declare namespace db = "http://basex.org/modules/db";
import module namespace val = "http://basex.org/modules/validate";

let $xml := doc("C:/Users/EUSA CCS/OneDrive - CAMPUS CAMARA SEVILLA SAU/Documentos/2025_2026/LDM/LMSGI/XQuery/inventario.xml")
let $xsd := "C:/Users/EUSA CCS/OneDrive - CAMPUS CAMARA SEVILLA SAU/Documentos/2025_2026/LDM/LMSGI/XQuery/inventario.xsd"
return validate:xsd($xml, $xsd)