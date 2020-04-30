SELECT MAX (go_annotations.count)
FROM (SELECT COUNT(go_id)
FROM evid
GROUP BY gene_id)
AS go_annotations;