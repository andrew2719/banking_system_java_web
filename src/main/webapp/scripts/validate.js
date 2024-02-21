function validateForm() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;
    if (password != confirmPassword) {
        document.getElementById("errorMessage").innerHTML = "Passwords do not match.";
        return false;
    }
    return true;
}
