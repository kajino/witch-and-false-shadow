<template lang="jade">
.system.light
  h1 ライトロック : Lock or [a] key (Default)
  ul
    li
      ul
        li
          label 通常
          p 平常時 : その場でライトをロックする。
        li
          label &nbsp;
          p ロック中 : ライトのロックを解除する。
    li
      ul
        li
          label 長押し
          p 最も近くの対象をロックする。
  div.actions
    p.action(@click="onClickImg('lock')")
      img(src="public/img/action/lock.png")
  h1 自動ロック切替[近] : LockSwitchCloser or [q] key (Default)
  ul
    li
      p より近くの対象に自動ロック対象を切り替える。
  h1 自動ロック切替[遠] : LockSwitchFarther or [w] key (Default)
  ul
    li
      p より遠くの対象に自動ロック対象を切り替える。
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
