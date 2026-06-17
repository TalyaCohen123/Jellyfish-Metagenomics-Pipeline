INPUT_FILE = config["input_path"]
OUTPUT_FILE = config["output_path"]

rule add_header:
    input:
        INPUT_FILE
    output:
        OUTPUT_FILE 
    shell:
        """
        echo -e 'qseqid\tsseqid\tpident\tlength\tevalue\tbitscore\tqcovs\tqstart\tqend\tsstart\tsend\tslen\tstitle' > {output}
        cat {input} >> {output}
        """

rule all:
    input:
        OUTPUT_FILE

