m4_define(<:xx_nav_articles:>, <:
    <nav class="nav_articles">
        $1
    </nav>
:>)
m4_define(<:xx_nav_article_article:>, <:
    <p><a href="javascript:glisser('article$1');">
        <img src="img/pastille.png" alt="p" class="nav_article_puce">
    </a></p>
:>)
m4_define(<:xx_nav_article_gallerie:>, <:
    <p><a href="javascript:glisser('gallerie');">
        <img src="img/pastille_ronde.png" alt="p" class="nav_article_puce">
    </a></p>
:>)
