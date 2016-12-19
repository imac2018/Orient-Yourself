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

@media screen and (min-width:769px) {
    .article_responsive { display:none;}
    .article_splash_conteneur { display:block;}
}
@media screen and (max-width:768px) {
    .article_responsive { display:block;}
    .article_splash_conteneur { display:none;}
}

</style>
<script>
function   lire_article_mobile$1() {$(".article_mobile$1").fadeIn();}
function delire_article_mobile$1() {$(".article_mobile$1").fadeOut();}
</script>
<div class="mobile_seulement article_mobile$1" style="display:none; position:fixed; top:0; left:0; width:100%; height:100%; z-index:9001; background:$3; opacity:.4;"></div>
<div class="mobile_seulement article_mobile$1" style="display:none; position:fixed; top:20%; left:0; width:100%; height:80%; z-index:9002; background:$3;">
    <table style="width:100%; height:100%;">
        <tr><td style="text-align:right;"><a href="javascript:delire_article_mobile$1();"><span style="color:black; font-weight:bold; font-size:20px;">X</span></a></td></tr>
        <tr><td style="text-align:center;">
            <div style="display:inline-block; padding:0 0 0 0; font-size:1.5em; line-height:1.2; color:black; font-weight:bold;   ">$6</div>
            <div style="display:inline-block; padding:0 0 0 0; font-size:1.5em; line-height:1.2; color:black; font-weight:lighter;">$7</div>
        </td></tr>
        <tr><td style="text-align:left; color:black; height:80%; padding:25px;"><div style=" height:100%; overflow:auto; color:black;">$8</div></td></tr>
    </table>
</div>
<div class="article_responsive" style="width:100%; height:100%; background:#3b3b3b;">
    <div style="height:50%; background-image:url('$2'); background-size:cover;"></div>
    <div style="position:relative; top:-10%; left:0; width:70%; height:60%; background:$3;">
    <a href="javascript:lire_article_mobile$1();">
        <table style="width:100%; height:100%;">
            <tr>
                <td style="height:50%; text-align:center;">
                    <div style="display:inline-block; padding:0 0 0 0; font-size:1.5em; line-height:1.2; color:black; font-weight:bold;   ">$6</div>
                    <div style="display:inline-block; padding:0 0 0 0; font-size:1.5em; line-height:1.2; color:black; font-weight:lighter;">$7</div>
                </td>
                m4_dnl <td style="padding:0 0 0 0; font-size:1.5em; line-height:1.2; text-align:left;  font-weight:lighter; margin-left:10px; color:black;">$7</td>
            </tr><tr>
                <td style="width:100%; height:50%; text-align:right; vertical-align:bottom; padding:5%;">
                    <span style="display:inline-block; color:black; font-size:20px; transform:translate(-10px, -20px);">Lire l'article</span>
                    <img src="img/icon_article1.png" alt="..." style="height:50px;">
                </td>
            </tr>
        </table>
    </a>
    </div>
</div>
<div class="article_splash_conteneur">
    <div class="splash"  style="background-image:url('$2'); background-size:cover;"></div>
    <div class="article" id="article$1" style="background:$3;">
        <table style="width:100%;"><tr>
            <td style="padding:30px 0 30px 20px; font-size:1.2em; font-weight:lighter;">$5</td>
            <td style="padding:0 0 0 0; font-size:1.5em; line-height:1.2; text-align:right; font-weight:bold;">$6</td>
            <td style="padding:0 0 0 0; font-size:1.5em; line-height:1.2; text-align:left;  font-weight:lighter; margin-left:10px;">$7</td>
        </tr></table>
        <div class="article_texte" id="article_texte$1">
            $8
        </div>

        <table style="width:100%;"><tr>
            <td style="text-align:center;"><img src="img/macro1.png" style="width:100%; transform:translateX(50%);"></td>
            <td style="text-align:center;">
                <a href="javascript:void(0);">
                    <img src="img/carre.png"  style="width:100%; position:relative; z-index:2;">
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
