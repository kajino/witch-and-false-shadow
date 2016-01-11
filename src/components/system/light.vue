<template lang="jade">
.system.light
  h1 追従/停止 : Lock or [a] key (Default)
  ul
    li
      ul
        li
          label 通常
          p ランタのプレイヤー追従/停止を切り替える。
    li
      ul
        li
          label 長押し
          p 近くの物体に光が当たる最適な位置まで移動して停止。
  h1 方向転換 : Reverse or [s] key (Default)
  ul
    li
      p ランタの光の向きを前後で切り替える。

</template>

<script lang="coffee">
module.exports =
  props: ['select']
  methods:
    onClickImg: (name) ->
      @select = name
</script>

<style lang="stylus">
#app
  #container
    #content
      .light
        > ul
          margin-bottom 30px
</style>
