<template lang="jade">
.character
  h1
    | シャッテ
  div.info
    .thumb(style="background-image: url(public/img/shatte.png)")
    p.context
      | 影守の一族の魔女。
      br
      | 次世代の守役として選ばれるも断ったため謹慎処分を受けた問題児。
      br
      | 魔法の才能はあるがあまり考えずに突っ走るため失敗も多い。
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
          margin 20px
        .info
          display flex
          .thumb
            flex 0 0 200px
          .context
            flex 1 0 0
            line-height 2
            margin 0 15px
</style>
