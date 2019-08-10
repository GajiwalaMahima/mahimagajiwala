
function fnClick()
{
    alert("clicked");
    document.getElementById("previous").click();
}
function animate(data) {
    if (data.status === 'success') {
        alert("clicked");
        document.getElementById("next").click();
    }
}

