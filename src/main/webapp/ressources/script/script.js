// menu déroulant
const dropdownElementList = document.querySelectorAll('.dropdown-toggle');
const dropdownList = dropdownElementList.map(function (dropdownToggleEl) {
    return new bootstrap.Dropdown(dropdownToggleEl);
});

// fenêtre affichage détails d'un client
function afficherClientDetails(clientId) {
    // Make an AJAX request to retrieve client details
    const request = new XMLHttpRequest();
    request.open('GET', 'getClientDetails?clientId=' + clientId, true);
    request.onreadystatechange = function() {
        if (request.readyState === 4 && request.status === 200) {
            // Update the client details area with the retrieved data
            document.getElementById('clientDetails').innerHTML = request.responseText;
        }
    };
    request.send();
}