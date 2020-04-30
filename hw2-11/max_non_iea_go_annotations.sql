SELECT MAX(max_go_annotations.max)
FROM(SELECT gene_id, COUNT(go_id)
MAX FROM evid WHERE evidence !='IEA'
GROUP BY gene_id)
AS max_go_annotations;