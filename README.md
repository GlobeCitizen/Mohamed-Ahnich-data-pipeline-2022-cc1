# Mohamed-Ahnich-data-pipeline-2022-cc1

Vous voyez dans le plan de terraform 1 to add, parceque j'avais mis un mauvais "ami" pour l'ec2 dans la premiere execution, c'est pour cela que je l'ai executé une deuxieme fois.

## Terraform screenshot

https://github.com/GlobeCitizen/Mohamed-Ahnich-data-pipeline-2022-cc1/blob/main/terraform-apply.png?raw=true

##  Ec2 screenshot with tag

https://github.com/GlobeCitizen/Mohamed-Ahnich-data-pipeline-2022-cc1/blob/main/ec2-instance-with-tag.png

## Python script execution

https://github.com/GlobeCitizen/Mohamed-Ahnich-data-pipeline-2022-cc1/blob/main/script_result.png

## Kinesis Data Stream

https://github.com/GlobeCitizen/Mohamed-Ahnich-data-pipeline-2022-cc1/blob/main/kinesis_data_stream.png

## Kinesis cli

aws kinesis delete-stream --stream-name Mohamed-Ahnich-stock-input-stream

aws kinesis create-stream --shard-count 1 --stream-name Mohamed-Ahnich-stock-input-stream

https://github.com/GlobeCitizen/Mohamed-Ahnich-data-pipeline-2022-cc1/blob/main/data_stream_1_shard.png

Quand on execute le script python pour écrire dans le stream ça ne marche pas

https://github.com/GlobeCitizen/Mohamed-Ahnich-data-pipeline-2022-cc1/blob/main/no_credentials.png

C'est normal parce que on a pas de credentials, donc on les ajoutes dans le script.



