// récupérer les champs nom et prénom + l'id du bouton "modifier"
let champNom = document.getElementById("champ-nom");
let champPrenom = document.getElementById("champ-prenom");
let btnModifier = document.getElementById("btn-modifier");
let divBoutons = document.getElementById("div-boutons");

// ajouter événement sur le bouton "modifier" : fonctions modification des champs + création de nv boutons
btnModifier.addEventListener("click", function () {
    modifierChamp(champNom);
    modifierChamp(champPrenom);
    modifierBoutons();
});

// fonction qui rend le champ modifiable
function modifierChamp(champ) {
    let input = document.createElement('input');
    input.value = champ.innerHTML;
    champ.innerHTML = '';
    champ.appendChild(input);
}

// fonction qui créer et ajoute un groupe de 3 boutons
function modifierBoutons() {
    // retrait du bouton "modifier"
    btnModifier.remove();

    // création du bouton "Annuler"
    let btnAnnuler = document.createElement("button");
    btnAnnuler.innerHTML = "Annuler les modifications";
    btnAnnuler.classList.add("btn", "btn-outline-secondary");

    // création du bouton "Enregistrer"
    let btnValider = document.createElement("button");
    btnValider.innerHTML = "Enregistrer les modifications";
    btnValider.classList.add("btn", "btn-outline-primary");
    btnValider.type = "submit";
    btnValider.id = "btn-valider";

    // création du bouton "Supprimer"
    let btnSupprimer = document.createElement("button");
    btnSupprimer.innerHTML = "Supprimer le client";
    btnSupprimer.classList.add("btn", "btn-outline-danger");
    btnSupprimer.type = "submit";
    btnSupprimer.id = "btn-suppr";

    // ajout des nouveaux boutons
    divBoutons.appendChild(btnValider);
    divBoutons.appendChild(btnAnnuler);
    divBoutons.appendChild(btnSupprimer);
}

// TODO ajouter un événement sur le groupe de bouton
let btnSupprimer = document.getElementById("btn-suppr");
let formulaire = document.getElementById("formulaire");

btnSupprimer.addEventListener("click", function () {
let clientId = document.getElementById("client_id").value;
    formulaire.submit();
})

// TODO ajouter événmt sur bouton valider
let btnValider = document.getElementById("btn-valider");

btnValider.addEventListener("click", function () {
    let clientId = document.getElementById("client_id").value;
    formulaire.submit();
})