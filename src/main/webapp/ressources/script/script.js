let champNom = document.getElementById("champ-nom");
let champPrenom = document.getElementById("champ-prenom");
let btnModifier = document.getElementById("btn-modifier");
let divBoutons = document.getElementById("div-boutons");

btnModifier.addEventListener("click", function () {
    modifierChamp(champNom);
    modifierChamp(champPrenom);
    modifierBoutons();
});

function modifierChamp(champ) {
    let input = document.createElement('input');
    input.value = champ.innerHTML;
    champ.innerHTML = '';
    champ.appendChild(input);
}

function modifierBoutons() {
    btnModifier.remove();

    let btnAnnuler = document.createElement("button");
    btnAnnuler.innerHTML = "Annuler les modifications";
    btnAnnuler.classList.add("btn", "btn-outline-secondary");

    let btnValider = document.createElement("button");
    btnValider.innerHTML = "Enregistrer les modifications";
    btnValider.classList.add("btn", "btn-outline-primary");

    let btnSupprimer = document.createElement("button");
    btnSupprimer.innerHTML = "Supprimer le client";
    btnSupprimer.classList.add("btn", "btn-outline-danger");

    divBoutons.appendChild(btnValider);
    divBoutons.appendChild(btnAnnuler);
    divBoutons.appendChild(btnSupprimer);
}

