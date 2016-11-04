function glisser(elid) {
    $('html, body').animate({
        scrollTop: $("#"+elid).offset().top
    }, 400);
}

var pastilles = [];
var posters = [];
var anciennes_largeurs = [];
function pastilles_capturer() {
    posters   = document.getElementsByClassName("poster");
    pastilles = document.getElementsByClassName("pastille");
    for(var i=0 ; i<pastilles.length ; ++i)
        anciennes_largeurs[i] = pastilles[i].scrollWidth;
}
function pastilles_frame(timestamp) {
    for(var i=0 ; i<pastilles.length ; ++i) {
        var dist  = Math.abs(posters[i].top - window.scrollTop);
        var poids = Math.max(0, 1 - dist/posters[i].scrollHeight);
        pastilles[i].style.width = anciennes_largeurs * poids;
    }
}
function pastilles_chargees() {
    pastilles_capturer();
    window.requestAnimationFrame(pastilles_frame);
}
// Commenté, parce que ça ne marchera pas tout de suite.
//$(function(){pastilles_chargees();}) //quand le DOM est pret...
