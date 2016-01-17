<template lang="jade">
.download
  h1
    |  Windows版
  p
    a(href="https://docs.google.com/uc?id=0B6Wnl8o7quBVSGpuVllRdlBmdVU&export=download" target="_blank")
      | ダウンロード
  p
    | ※ Windows環境で exe を実行できない場合はファイルを右クリックしてプロパティから実行を許可する必要があります。
  h1
    | Mac版 準備中
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
        p
          margin 15px
          line-height 2
          a
            color blue
            text-decoration underline
</style>
