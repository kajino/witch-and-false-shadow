<template lang="jade">
.system.view
  ul
    li
      h1 カメラ回転 : 右アナログスティック
      p カメラの向きを自由に変更する。
    li
      h1 カメラリセット : LookForward or [f] key (Default)
      p カメラをプレイヤーの前方に向ける。

</template>

<script lang="coffee">
module.exports = {}
</script>

<style lang="stylus">
#app
  #container
    #content
      .view
        > ul
          > li
            margin-bottom 30px
</style>
