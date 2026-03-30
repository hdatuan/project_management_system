/**
 *  Helper functions
 */

/* ---------- DOM ---------- */
function getById(id) {
    return document.getElementById(id);
}

// Keep a dedicated helper alias without overriding jQuery's global `$`.
var $id = getById;

// Backward compatibility: only expose `$` if jQuery is not present.
if (typeof window !== "undefined" && typeof window.$ !== "function") {
    window.$ = getById;
}

/* ---------- PRELOADER SAFETY ---------- */
(function () {
    if (typeof document === "undefined") {
        return;
    }

    function hidePreloader() {
        var preloader = document.querySelector(".preloader");
        if (!preloader) {
            return;
        }
        preloader.style.display = "none";
    }

    if (document.readyState === "interactive" || document.readyState === "complete") {
        hidePreloader();
    }

    document.addEventListener("DOMContentLoaded", hidePreloader);
    window.addEventListener("load", hidePreloader);

    // Last-resort timeout to avoid infinite overlay when other JS crashes.
    setTimeout(hidePreloader, 2500);
    window.addEventListener("error", hidePreloader);
})();

/* ---------- STRING ---------- */
function isEmpty(value) {
    return !value || value.trim().length === 0;
}

function trimValue(inputElement) {
    if (inputElement && inputElement.value) {
        inputElement.value = inputElement.value.trim();
    }
}

/* ---------- EMAIL ---------- */
function isValidEmail(email) {
	const regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    return regex.test(email);
}

/* ---------- SPACE BLOCK ---------- */
function blockSpace(event){
	if (event.key === " "){
		event.preventDefault();
	}
}

/* ---------- BUTTON ---------- */
function disableButton(btn) {
    if (btn) btn.disabled = true;
}

function enableButton(btn) {
    if (btn) btn.disabled = false;
}

/* ---------- MESSAGE ---------- */
function showMessage(element, text, color = "red") {
    if (!element) return;
    element.textContent = text;
    element.style.color = color;
}

function clearMessage(element) {
    if (!element) return;
    element.textContent = "";
}

/* ---------- INPUT STYLE ---------- */
function setInputError(input) {
    if (input) input.classList.add("input-error");
}

function clearInputError(input) {
    if (input) input.classList.remove("input-error");
}

/* ---------- ASCII Check (No Vietnamese, no emoji) ---------- */
function isAsciiOnly(text){
	return /^[\x00-\x7F]*$/.test(text);
}

/* ---------- PASSWORD BASIC CHECK ---------- */

function hasLetter(text){
	return /[A-Za-z]/.test(text);
}

function hasNumber(text){
	return /[0-9]/.test(text);
}

function hasSpace(text){
	return /\s/.test(text);
}
