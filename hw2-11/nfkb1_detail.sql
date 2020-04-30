SELECT DISTINCT ON (t.tax_id, e.gene_id, e.go_id)t.species_name, tg.symbol, tg.chromosome, g.go_name
FROM taxname t, taxgene tg, go g, evid e
WHERE t.tax_id = tg.tax_id
AND e.gene_id = tg.gene_id
AND e.go_id = g.go_id
AND tg.symbol ILIKE 'nfkb1'
and e.evidence NOT LIKE 'IEA'
ORDER BY t.tax_id, e.gene_id, e.go_id;