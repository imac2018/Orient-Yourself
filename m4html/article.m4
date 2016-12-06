m4_define(<:xx_article:>, <:
<style>
#article$1 p, #article$1 h1, #article$1 h2, #article$1 div {
    color:$4;
}
</style>
<div class="article_splash_conteneur" id="article$1">
    <div class="splash"  style="background-image:url('$2'); background-size:cover;"></div>
    <div class="article" style="background:$3;">
        <div class="article_entete">
            <div style="display:inline-block;"><h1>$5</h1></div>
            <div style="float:right;">
                <h2 style="display:inline-block; text-align:right;">$6</h2>
                <h2 style="display:inline-block; text-align:left; ">$7</h2>
            </div>
        </div>
        <div class="article_texte">
            $8
        </div>
        <img alt="foo" src="img/mais_ou_que_cetait.png" style="display:block; width:80%; margin:auto;">
    </div>
</div>
:>)


m4_define(<:xx_gallerie:>, <:
<div style="background:$1; heigth:100px;">
    <div id="gallerie" class="gallerie" style="background:$2;">
        $3
    </div>
</div>
:>)
m4_define(<:xx_gallerie_vignette:>, <:
    <div class="vignette" style="height:$1;"></div>
:>)
