Prerequisiti:

Una VPC con due subnet pubbliche e due subnet private.
Routing table configurate correttamente per le subnet.
Un Internet Gateway per le subnet pubbliche.
Un NAT Gateway per le subnet private.
Repository ECR private con i nomi ecrapache e ecrwordpress.
Passaggi Successivi:

Creare la Pipeline:

Accedi alla console AWS e vai al servizio CodePipeline.
Clicca su "Create pipeline".
Configura la pipeline inserendo un nome e selezionando la tua repository GitHub come origine.
Configura gli stage successivi come descritto di seguito.
Stage di Build:

Aggiungi uno stage di build alla tua pipeline.
Seleziona CodeBuild come provider del servizio.
Configura le impostazioni di CodeBuild per eseguire il build utilizzando il file buildspec.yaml presente nella repository.
Assicurarsi che il file buildspec.yaml includa i comandi per ottenere le immagini dalle repository ECR private specificate come prerequisiti.