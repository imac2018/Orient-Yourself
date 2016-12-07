m4_define(<:xx_nav_categories_perle:>, 
<a href="$1"><div style="display:inline-block; background-color:rgba(0,0,0,.2); width:50px; height:50px; transform:translate($2,$3); ">$1</div></a>
)

m4_define(<:xx_nav_categories_chemin:>, 
<div>
    xx_nav_categories_perle(panoramique.html, -20px, -10px)
    xx_nav_categories_perle(spirituel.html,   +20px, +10px)
    xx_nav_categories_perle(artisanal.html,   -20px, -10px)
    xx_nav_categories_perle(gustatif.html,    +20px, +10px)
    xx_nav_categories_perle(convivial.html,   -20px, -10px)
</div>
)

m4_define(<:xx_nav_categories_entete:>, 
<nav class="nav_categories">
    <a href="index.html"><img class="nav_categorie_logo" alt="logo" src="img/logo_blanc.png"></a>
    <div>POUR UN VOYAGE...</div>
    xx_nav_categories_chemin
    <a href="javascript:alert('La recherche, c\'est plus tard !');"><img alt="chercher" src="img/loupe.png" style="width:16px;"></a>
</nav>
)

