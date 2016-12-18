m4_define(<:xx_article:>, <:
<style>
#article$1 p, #article$1 h1, #article$1 h2, #article$1 div {
    color:$4;
}
#article$1 article_texte {
    -webkit-column-count: 1;
       -moz-column-count: 1;
            column-count: 1;
    -webkit-column-gap:   20px;
       -moz-column-gap:   20px;
            column-gap:   20px;
 /* -webkit-column-rule:  1px solid lightblue; */
 /*    -moz-column-rule:  1px solid lightblue; */
 /*         column-rule:  1px solid lightblue; */
}
#article$1 article_texte, #article$1 article_texte * {
    overflow:hidden;
    line-height: 1.2;
}
#deplie_seulement$1 {
    display:none;
}
</style>
<div class="article_splash_conteneur">
    <div class="splash"  style="background-image:url('$2'); background-size:cover;"></div>
    <div class="article" id="article$1" style="background:$3;">
        m4_dnl <div class="article_entete">
        m4_dnl     <div style="display:inline-block;"><h1 style="font-size:1em; font-weight:lighter; transform:translateY(-16px);">$5</h1></div>
        m4_dnl     <div style="float:right;">
        m4_dnl         <h2 style="display:inline-block; text-align:right; font-size: 1em; line-height: 1.2;">$6</h2>
        m4_dnl         <h2 style="display:inline-block; text-align:right; font-size: 1em; line-height: 1.2; font-weight:lighter; margin-left:10px;">$7</h2>
        m4_dnl     </div>
        m4_dnl </div>
        <table style="width:100%;"><tr>
            <td style="padding:30px 0 30px 20px; font-size:1.2em; font-weight:lighter;">$5</td>
            <td style="padding:0 0 0 0; font-size:1.5em; line-height:1.2; text-align:right; font-weight:bold;">$6</td>
            <td style="padding:0 0 0 0; font-size:1.5em; line-height:1.2; text-align:left;  font-weight:lighter; margin-left:10px;">$7</td>
        </tr></table>
        <div class="article_texte" id="article_texte$1">
            $8
        </div>
        m4_dnl <p class="plie_seulement$1">...</p>
        m4_dnl <a class="plie_seulement$1" href="javascript:deplier_article($1);"><p>Lire la suite</p></a>
        m4_dnl <a class="deplie_seulement$1" href="javascript:plier_article($1);"><p>Replier</p></a>


        <table style="width:100%;"><tr>
            <td style="text-align:center;"><img src="img/macro1.png" style="width:100%; transform:translateX(50%);"></td>
            <td style="text-align:center;">
                <a href="javascript:void(0);">
                    <img src="img/carre.png"  style="width:100%; position:relative; z-index:2;">
                    m4_dnl <br><p style="color:black; position:relative; z-index:8; transform:translateY(-80px);">Voir sur la carte</p>
                </a>
            </td>
            <td style="text-align:center;"><img src="img/macro2.png" style="width:100%; transform:translateX(-50%);"></td>
        </tr></table>

    </div>
</div>
:>)


m4_define(<:xx_gallerie:>, <:
<div class="gallerie_conteneur" style="background:$1;">
    <div id="gallerie" class="gallerie" style="background:$2;">
        $3
    </div>
</div>
:>)
m4_define(<:xx_gallerie_vignette:>, <:
    <div class="vignette" style="height:$1;"></div>
:>)
