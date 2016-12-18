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

// Quand le DOM est pret...
$(function(){
    $("#page_chargement").delay(4000).fadeOut("slow");
    //pastilles_chargees();
});



article_duree_ms = 200;
function deplier_article(i) {
    $("#article"+i)
        .animate({ width: "+=30%" }, article_duree_ms);
    $("#article_texte"+i)
        .delay(article_duree_ms/2).queue(function(next) { $(this).css("column-count", "2"); next(); })
    $("#plie_seulement"+i)  .fadeOut({ duration:article_duree_ms} );
    $("#deplie_seulement"+i).fadeIn( { duration:article_duree_ms} );
}
function plier_article(i) {
    $("#article"+i)
        .animate({ width: "-=30%" }, article_duree_ms);
    $("#article_texte"+i)
        .delay(article_duree_ms/2).queue(function(next) { $(this).css("column-count", "1"); next(); })
    $("#plie_seulement"+i)  .fadeIn( {duration:article_duree_ms} );
    $("#deplie_seulement"+i).fadeOut({duration:article_duree_ms} );
}

