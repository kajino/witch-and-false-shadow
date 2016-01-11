<template lang="jade">
.system
  h1 影踏み : Stamp or [z] key (Default)
  ul
    li
      h2 通常
      ul
        li
          label 影縫い（近）
          p 動体、生物の影を縫いとめて対象を一定時間停止させる。
        li
          label 影詠み
          p 朧影（オボロカゲ）を踏むことで実体化させる。
        li
          label 影祓い
          p 影に取り憑いている魂を祓う。
      div.actions
        p.action(@click="onClickImg('stamp')")
          img(src="public/img/action/stamp.png")
        p.action(@click="onClickImg('insite')")
          img(src="public/img/action/insite.png")
        p.action(@click="onClickImg('harai')")
          img(src="public/img/action/harai.png")
      h2 長押し
      ul
        li
          label 影渡り
          p 影に入り込み移動する。敵に気づかれ難くなったり、通常では登れないような傾斜などを登ることができるようになる。
        li
          label 影繰り
          p 生物の影に入り込み対象を操る。
      div.actions
        p.action(@click="onClickImg('dive')")
          img(src="public/img/action/dive.png")
        p.action(@click="onClickImg('marionette')")
          img(src="public/img/action/marionette.png")
  h1 影縫い（遠） : Bind or [x] key (Default)
  ul
    li
      p 影クナイの投擲により影を縫いとめ対象を一定時間停止させる。ボタン押し込み中に狙いを定めることもできる。
  div.actions
    p.action(@click="onClickImg('bind')")
      img(src="public/img/action/bind.png")
  h1 跳躍 : Jump or [space] key (Default)
  ul
    li
      p 一定の高さまで跳び上がる。着地時に影踏み（通常）判定がある。
  div.actions
    p.action(@click="onClickImg('jump')")
      img(src="public/img/action/jump.png")
  h1 影法師 : Avatar or [v] key (Default)
  ul
    li
      p まだ秘密。ストーリー展開に応じて解放されます。体験版では使用できません。
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
      .system
        h1
          font-size 25px
          margin-bottom 20px
        ul
          margin-left 20px
          li
            h2
              font-size 20px
              margin-bottom 10px
            ul
              li
                display flex
                margin 5px
                label
                  flex 0 0 100px
                  line-height 1.5
                p
                  flex 1 0 0
                  line-height 1.5
        .actions
          display flex
          justify-content center
          margin 15px
          .action
            height 100px
            margin 10px
            img
              width auto
              height 100%
              transition all .5s ease
.action-modal
  display none
  position fixed
  top 0
  left 0
  width 100%
  height 100%
  background rgba(0,0,0,0.8)
  justify-content center
  align-items center
  img
    width 600px
    height auto
    border solid 3px #fff
  &.active
    display flex
</style>
