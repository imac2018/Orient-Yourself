m4_dnl m4_define(<:xx_nav_categories_perle:>, 
m4_dnl <a href="$1"><div style="text-align:center; display:inline-block; background-color:rgba(0,0,0,.2); width:50px; height:50px; transform:translate($2,$3); ">$1</div></a>
m4_dnl )

m4_dnl m4_define(<:xx_nav_categories_chemin:>, 
m4_dnl <table style="background-image:url('img/menu_simple5.png'); background-repeat:no-repeat; background-size:contain; background-position:50% 50%; width:100%; height:100px;"><tr>
m4_dnl   <td style="text-align:center;">xx_nav_categories_perle(panoramique.html, -0px, -0px)</td>
m4_dnl   <td style="text-align:center;">xx_nav_categories_perle(spirituel.html,   +0px, +0px)</td>
m4_dnl   <td style="text-align:center;">xx_nav_categories_perle(artisanal.html,   -0px, -0px)</td>
m4_dnl   <td style="text-align:center;">xx_nav_categories_perle(gustatif.html,    +0px, +0px)</td>
m4_dnl   <td style="text-align:center;">xx_nav_categories_perle(convivial.html,   -0px, -0px)</td>
m4_dnl </tr></table>
m4_dnl )

m4_define(<:xx_nav_categories_perle:>, 
<div style="display:inline-block; width:$5; margin:0 -2px;">
    <a href="$1">
        <div style="position: relative; width: 0; height: 0;">
            <div style="position: absolute; left: $7; top: $8;" onmouseover="chemin_eclairer($6);" onmouseleave="chemin_eteindre($6);">
                $9
            </div>
        </div>
    </a>
    <img alt="$1" src="$2" style="display:block; width:100%; margin:0;">
    <a href="$1" style="text-decoration:none;">
        <img alt="$1" src="$3" style="display:block; width:100%; margin:0; opacity:.5;" onmouseover="chemin_eclairer($6);" onmouseleave="chemin_eteindre($6);" id="noeud$6">
    </a>
    <img alt="$1" src="$4" style="display:block; width:100%; margin:0;">
</div>
)
m4_define(<:xx_nav_categories_chmin:>, 
<div style="display:inline-block; width:$5; margin:0 -2px;">
    <img alt="$1" src="$2" style="display:inline-block; width:100%; opacity:.5;" id="chemin$6"><br>
</div>
)

m4_define(<:xx_nav_categories_chemin_script:>, 
<script style="display:none;">
chemin_transition_ms = 200;
function chemin_eclairer(n) {
    for(var i=1 ; i<=n ; ++i)
        $("#noeud"+i).stop().fadeTo(chemin_transition_ms, 1);
    for(var i=1 ; i<=n-1 ; ++i)
        $("#chemin"+i).stop().fadeTo(chemin_transition_ms, 1);
}
function chemin_eteindre(n) {
    for(var i=1 ; i<=n ; ++i)
        $("#noeud"+i).stop().fadeTo(chemin_transition_ms, .5);
    for(var i=1 ; i<=n-1 ; ++i)
        $("#chemin"+i).stop().fadeTo(chemin_transition_ms, .5);
}
</script>
)

m4_define(<:xx_nav_categories_chemin_accueil:>, 
xx_nav_categories_chemin_script()
<div style="width:100%; text-align:center; display:inline-block;">
  xx_nav_categories_perle(panoramique.html, img/menu_accueil/n1_n.png, img/menu_accueil/n1_c.png, img/menu_accueil/n1_s.png,  5.47417116422513492675%, 1, -22px, -30px, PANORAMIQUE)
  xx_nav_categories_chmin(panoramique.html, img/menu_accueil/c1.png,   img/menu_accueil/c1.png,   img/menu_accueil/c1.png,   17.19352351580570547417%, 1, -22px, -30px, PANORAMIQUE)
  xx_nav_categories_perle(spirituel.html,   img/menu_accueil/n2_n.png, img/menu_accueil/n2_c.png, img/menu_accueil/n2_s.png,  7.71010023130300693909%, 2, -12px, -30px, SPIRITUEL)
  xx_nav_categories_chmin(spirituel.html,   img/menu_accueil/c2.png,   img/menu_accueil/c2.png,   img/menu_accueil/c2.png,   13.10717039321511179645%, 2, -22px, -30px, SPIRITUEL)
  xx_nav_categories_perle(artisanal.html,   img/menu_accueil/n3_n.png, img/menu_accueil/n3_c.png, img/menu_accueil/n3_s.png,  5.39707016191210485736%, 3, -18px, -22px, ARTISANAL)
  xx_nav_categories_chmin(artisanal.html,   img/menu_accueil/c3.png,   img/menu_accueil/c3.png,   img/menu_accueil/c3.png,   28.45026985350809560524%, 3, -22px, -30px, ARTISANAL)
  xx_nav_categories_perle(gustatif.html,    img/menu_accueil/n4_n.png, img/menu_accueil/n4_c.png, img/menu_accueil/n4_s.png,  5.93677717810331534309%, 4, -16px, -30px, GUSTATIF)
  xx_nav_categories_chmin(gustatif.html,    img/menu_accueil/c4.png,   img/menu_accueil/c4.png,   img/menu_accueil/c4.png,   11.71935235158057054741%, 4, -22px, -30px, GUSTATIF)
  xx_nav_categories_perle(convivial.html,   img/menu_accueil/n5_n.png, img/menu_accueil/n5_c.png, img/menu_accueil/n5_s.png,  5.01156515034695451040%, 5, -18px, -26px, CONVIVIAL)
</div>
)

m4_define(<:xx_nav_categories_chemin:>, 
xx_nav_categories_chemin_script()
<div style="width:100%; text-align:center; display:inline-block;">
  xx_nav_categories_perle(panoramique.html, img/menu_simple/n1_n.png, img/menu_simple/n1_c.png, img/menu_simple/n1_s.png,  4.97335701598579040852%, 1, -22px, -30px, PANORAMIQUE)
  xx_nav_categories_chmin(panoramique.html, img/menu_simple/c1.png,   img/menu_simple/c1.png,   img/menu_simple/c1.png,   18.25932504440497335701%, 1, -22px, -30px, PANORAMIQUE)
  xx_nav_categories_perle(spirituel.html,   img/menu_simple/n2_n.png, img/menu_simple/n2_c.png, img/menu_simple/n2_s.png,  5.11545293072824156305%, 2, -12px, -30px, SPIRITUEL)
  xx_nav_categories_chmin(spirituel.html,   img/menu_simple/c2.png,   img/menu_simple/c2.png,   img/menu_simple/c2.png,   15.73712255772646536412%, 2, -22px, -30px, SPIRITUEL)
  xx_nav_categories_perle(artisanal.html,   img/menu_simple/n3_n.png, img/menu_simple/n3_c.png, img/menu_simple/n3_s.png,  5.00888099467140319715%, 3, -18px, -22px, ARTISANAL)
  xx_nav_categories_chmin(artisanal.html,   img/menu_simple/c3.png,   img/menu_simple/c3.png,   img/menu_simple/c3.png,   17.93960923623445825932%, 3, -22px, -30px, ARTISANAL)
  xx_nav_categories_perle(gustatif.html,    img/menu_simple/n4_n.png, img/menu_simple/n4_c.png, img/menu_simple/n4_s.png,  5.15097690941385435168%, 4, -16px, -30px, GUSTATIF)
  xx_nav_categories_chmin(gustatif.html,    img/menu_simple/c4.png,   img/menu_simple/c4.png,   img/menu_simple/c4.png,   22.77087033747779751332%, 4, -22px, -30px, GUSTATIF)
  xx_nav_categories_perle(convivial.html,   img/menu_simple/n5_n.png, img/menu_simple/n5_c.png, img/menu_simple/n5_s.png,  5.04440497335701598579%, 5, -18px, -26px, CONVIVIAL)
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

