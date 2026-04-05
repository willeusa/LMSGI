for $p in db:open //producto[@categoria = "gpu"]
return replace value of node $p/stock with ($p/stock + 5)