
process INDEX {
    tag "$transcriptome.simpleName"
    storeDir params.store_dir


    input:
    path transcriptome 

    output:
    path 'index' 

    script:
    """
    salmon index --threads $task.cpus -t $transcriptome -i index
    """
}
