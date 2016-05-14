export DIR=${PWD}

neo4j-import \
  --into panamapapers.db \
  --nodes:Address $DIR/Addresses.fixed.csv \
  --nodes:Entity $DIR/Entities.csv \
  --nodes:Intermediary $DIR/Intermediaries.csv \
  --nodes:Officer $DIR/Officers.csv \
  --relationships $DIR/all_edges.csv \
  --ignore-empty-strings true \
  --skip-duplicate-nodes true \
  --skip-bad-relationships true \
  --bad-tolerance 10000 \
  --multiline-fields=true
