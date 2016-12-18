m4_define(<:xx_categorie_footer:>, <:
<style>
#footer_hack   { background-color:white; }
#footer_hack * { color:black; }
</style>
<footer class="footer_non_collant" id="footer_hack">
    <div style="height:10px;"></div>
    m4_dnl <a href="javascript:alert('Plus tard :|');"><div style="background-color:#555555; height:32px; text-align:center;">Et sur une carte ?</div></a>
    xx_nav_footer()
</footer>
:>)
