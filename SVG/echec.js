function initEchec() {
    dossierImages='pieces/';
    //prend les noms des img
    var pieces =["Tour", "Canasson", "Fou", "Dame", "Roi", "Fou", "Canasson", "Tour"];
	var nomPiece = "";
	var chemin ="";

	var id=0;
	var color=1;
	
	for(var i=0; i < 8; i++) {
        nomPiece = pieces[i];
        chemin = dossierImages + nomPiece;
        
        document.getElementById("1erLigne").innerHTML += '<img id="img'+ nomPiece + id +'" class="pieces" src="' + chemin + '_noir.png' + '" alt="' + nomPiece + '"/>';
        
        document.getElementById("4erLigne").innerHTML += '<img id="img'+ nomPiece + id +'" class="pieces" src="' + chemin + '_blanc.png' + '" alt="' + nomPiece + '"/>';
    }
    
    for(var i=0; i < 8; i++) {
        nomPiece = "Pion";
        chemin = dossierImages + nomPiece;
        
        document.getElementById("2erLigne").innerHTML += '<img id="img'+ nomPiece + id +'" class="pieces" src="' + chemin + '_noir.png' + '" alt="' + nomPiece + '"/>';
        document.getElementById("3erLigne").innerHTML += '<img id="img'+ nomPiece + id +'" class="pieces" src="' + chemin + '_blanc.png' + '" alt="' + nomPiece + '"/>';
    }
    
    document.getElementById("btnPlacer").style.visibility = 'hidden'
}