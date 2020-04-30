CREATE TABLE taxname (tax_id VARCHAR PRIMARY KEY, species_name VARCHAR);

CREATE TABLE taxgene (tax_id VARCHAR, gene_id VARCHAR PRIMARY KEY, symbol VARCHAR, chromosome VARCHAR);

CREATE TABLE go (go_id VARCHAR PRIMARY KEY, go_name VARCHAR);

CREATE TABLE evid (gene_id VARCHAR, go_id VARCHAR, evidence VARCHAR, PRIMARY KEY(gene_id,go_id,evidence));