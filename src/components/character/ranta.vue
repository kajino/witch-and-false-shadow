<template lang="jade">
.character
  h1
    | ランタ
  div.info
    .thumb(style="background-image: url(public/img/ranta.png)")
    p.context
      | 影守の一族に代々仕えているランタン蝙蝠の一匹。
      br
      | 眼や口から光を出して影を作り、影の魔法の発動をサポートする。
      br
      | シャッテよりもかなり歳上であるため数年前から問題児の教育係としてパートナーになっている。
</template>

<script lang="coffee">
module.exports = {}
</script>

<style lang="stylus">
#app
  #container
    #content
      .character
        h1
          font-size 20px
        .thumb
          background-repeat no-repeat
          background-size contain
          min-height 400px
</style>
