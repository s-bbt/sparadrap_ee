const dropdownElementList = document.querySelectorAll('.dropdown-toggle');
const dropdownList = dropdownElementList.map(function (dropdownToggleEl) {
    return new bootstrap.Dropdown(dropdownToggleEl);
});