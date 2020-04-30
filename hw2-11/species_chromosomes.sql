SELECT DISTINCT species_name, chromosome
FROM taxgene, taxname 
WHERE taxgene.tax_id = taxname.tax_id AND taxgene.chromosome IS NOT NULL AND taxgene.chromosome != 'Un'
ORDER BY species_name,chromosome;
