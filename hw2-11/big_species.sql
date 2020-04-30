SELECT species_name 
FROM taxname, taxgene 
WHERE taxgene.tax_id = taxname.tax_id 
GROUP BY species_name
HAVING COUNT(DISTINCT chromosome) >= 20
ORDER BY species_name;