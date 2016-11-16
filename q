﻿/* Bouts de code rapides pour les media queries :
 *
 * @media screen and (max-width:780px) {...}
 * @media screen and (max-height:580px) {...}
 */

#page_chargement {
    position:fixed;
    top:0; left:0;
    width:100%; height:100%;
    z-index:2;
    background-color:white;
}

.pleine_page {
    width:100%; height:100%;
}

/* A défaut d'un meilleur nom... x) */
.poster {
    overflow:hidden;
    background-size:cover;
}
.poster, .poster_fond {
    width:100%; height:100%;
}
.poster_logo_conteneur {
    width:50%; heigth:50%;
}
.poster_fond, .poster_logo_conteneur {
    position: relative;
    display:flex;
    justify-content: center;
    align-items: center;
}
.poster_logo {
    transition: transform 0.3s ease-out 0s;
}
.poster_logo_conteneur:hover .poster_logo {
    transform: translateX(-20px);
}
.poster_logo_derriere { 
    position:absolute; top:0; left:0;
    width:100%; height:100%;
    opacity: 0;
    transition: transform 0.3s ease-out 0s, 
                opacity   0.3s ease-out 0s; 
}
.poster_logo_conteneur:hover .poster_logo_derriere {
    opacity: 1;
    transform: translateX(20px);
}

.poster_article {
    height:100%;
    width:50%;
    background:rgba(0,0,0,0.9);
    color:white;
    transform: translate(200%,-100%);
    transition: transform 0.3s ease-out 0s;
}

.poster > a:active ~ .poster_article {
    transform: translate(100%,-100%);
}

.gallerie {
    /*
    display: flex;
    flex-direction:row;
    justify-content: space-around;
    align-items:center;
    align-content:center;
    flex-wrap: wrap;
    */
}

.gallerie {
    line-height:0;
    column-gap: 0;
}
.vignette {
    /* flex: auto; */
    /*
    width:100% !important;
    height: auto !important;
    */
    margin:1px;
    background:#dddddd;
    -webkit-column-break-inside:avoid; 
    -moz-column-break-inside:avoid;
    -ms-column-break-inside:avoid; 
    -o-column-break-inside:avoid;
    column-break-inside:avoid;
}

@media screen and (min-width:1028px) { .gallerie { column-count: 5; } }
@media screen and (max-width:1028px) { .gallerie { column-count: 4; } }
@media screen and (max-width:780px)  { .gallerie { column-count: 3; } }
@media screen and (max-width:400px)  { .gallerie { column-count: 1; } }


.nav_articles {
    z-index:1;
    background-color:rgba(0,0,0,0.8);
    position:fixed;
    margin-right:10px;
    right:0;
    top:50%;
}

.nav_article_puce {
    width:  20px;
    margin: 10px 0;
}

.nav_categories {
    z-index:1;
    background-color:rgba(0,0,0,0.8);
    position:fixed;
    top:0; left:0;
    width:100%;
}
.nav_categories > * {
    display:inline;
}

.nav_categorie {
    margin: 10px;
    font-family: "Bebas Neue", sans-serif;
    font-weight:bold;
}
.nav_categorie_logo {
    width: 140px;
    margin: 10px;
}


/*
@keyframes poster_logo_anim {
    from {background-color: rgba(0,0,0,0);}
    to   {background-color: yellow;}
}

.poster_logo:hover,
.poster_logo:focus,
.poster_logo:active
{
    animation: poster_logo_anim 1s ease-out 0s 1 normal both running;
}
*/