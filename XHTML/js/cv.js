function afficheFrEn(idBlock) {
    var divEn = document.getElementById("main")
    var divFr = document.getElementById("mainFr")

    if (idBlock=="en") {
        divEn.style.display = 'block'
        divFr.style.display = 'none'
    }
    else {
        divEn.style.display = 'none'
        divFr.style.display = 'block'
    }


    //document.getElementById("mainFR").style.visibility = 'hidden'
}