<template lang="jade">
.download
  h1
    | Steam
    a(href="http://store.steampowered.com/app/732290/Schatte_The_Witch_and_the_Fake_Shadow/" target="_blank")
      | Link
  br
  h1
    | DLSite.com
    a(href="http://www.dlsite.com/home/work/=/product_id/RJ205921.html" target="_blank")
      | Link
  br
  h1
    | MelonbooksDL
    a(href="http://www.melonbooks.com/index.php?main_page=product_info&products_id=IT0000196860" target="_blank")
      | Link
  br
  h1
    | Melonbooks
    a(href="https://www.melonbooks.co.jp/detail/detail.php?product_id=283625" target="_blank")
      | Link
  br
  h1
    | とらのあな
    a(href="http://www.toranoana.jp/mailorder/article/04/0030/57/17/040030571712.html" target="_blank")
      | Link
  br
  h1
    | DMM 同人
    a(href="https://www.dmm.co.jp/dc/doujin/-/detail/=/cid=d_115679/?i3_ref=search&i3_ord=1" target="_blank")
      | Link
</template>

<script lang="coffee">
module.exports = {}
</script>

<style lang="stylus">
#app
  #container
    #content
      .download
        height 100%
        padding 0
        background-color transparent
        line-height 3
        text-align center
        width 100%
        h1
          font-size 22px
        a
          margin-left: 10px
          color blue
          text-decoration underline
        p
          margin 15px
          line-height 2
          a
            margin-left: 50px
            color blue
            text-decoration underline
</style>
