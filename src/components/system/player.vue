<template lang="jade">
.system
  h1 影踏み(カゲフミ) : Stamp or [z] key (Default)
  ul
    li
      h2 通常
      ul
        li
          label 影縫い[近]　　(カゲヌイ)
          p 動体、生物の影を縫いとめて対象を一定時間停止させる。
        li
          label 影詠み　　　　(カゲヨミ)
          p 朧影（オボロカゲ）を踏むことで実体化させる。
      div.actions
        p.action(@click="onClickImg('bind2')")
          img(src="public/img/action/bind2.png")
        p.action(@click="onClickImg('insite')")
          img(src="public/img/action/insite.png")
      h2 長押し
      ul
        li
          label 影渡り　　　　(カゲワタリ)
          p 影に入り込み移動する。通常では登れないような傾斜などを登ることができるようになる。また転移門(ゲート)の間を転移することもできる。
      div.actions
        p.action(@click="onClickImg('dive')")
          img(src="public/img/action/dive.png")
      ul
        li
          label 影繰り　　　　(カゲクリ)
          p 生物の影に入り込み対象を操ることができる。
        li
          label &nbsp;
          p ※ 別の何かが憑依しているような場合は操ることができない。
      div.actions
        p.action(@click="onClickImg('marionette')")
          img(src="public/img/action/marionette.png")
      br
      br
  h1 影縫い[遠](カゲヌイ) : Bind or [x] key (Default)
  ul
    li
      p 影クナイの投擲により影を縫いとめ対象を一定時間停止させる。ボタン押し込み中に狙いを定めることもできる。
      p 照準開始時に影くないの生成に魔力を消費するため魔力が足りない場合は発動しない。
  div.actions
    p.action(@click="onClickImg('bind')")
      img(src="public/img/action/bind.png")
  ul
    li
      p ライト自動ロック状態では自動照準モードとなる。
      br
      br
  h1 ジャンプ & 影祓い(カゲハライ): Jump or [space] key (Default)
  ul
    li
      p ジャンプ後の着地の際に敵の影を踏みつけることで影に取り付いた邪悪な魂を祓うことができる。一度では祓いきれない場合もある。
  div.actions
    p.action(@click="onClickImg('jump')")
      img(src="public/img/action/jump.png")
  br
  br
  h1 影法師(カゲボウシ)
  ul
    li
      p 幽体のレリックの補助によって発動可能。レリックの丸い台座に立つと自動で発動する。発動中魔力を消費し続ける。解除時に本体と影法師の位置を入れ替えることが可能。ストーリー展開に応じて解放され、体験版では使用不可。
  div.actions
    p.action(@click="onClickImg('avatar')")
      img(src="public/img/action/avatar.png")
  br
  br
  h1 影重縫い(カゲカサネヌイ)（遠） : Special or [s] key (Default)
  ul
    li
      p 影縛りが成功するごとに影クナイゲージが溜まる。溜まったゲージを消費し影くないを同時に複数投擲する。影縛りの拘束時間及びライト照射範囲にプラス補正あり。
    li
      p 一定条件を満たさないと習得できない。体験版では使用不可。
  div.actions
    p.action(@click="onClickImg('special')")
      img(src="public/img/action/special.png")

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
      font-size 18px
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
                  flex 0 0 150px
                  line-height 1.5
                p
                  flex 1 0 0
                  line-height 1.5
        .actions
          display flex
          justify-content center
          margin 15px
          .action
            height 200px
            margin 10px
            img
              width auto
              max-width: 100%
              height 100%
              transition all .5s ease
.action-modal
  z-index 100
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
    max-height 500px
    max-width 90%
    height auto
    border solid 3px #fff
    background-color #000
  &.active
    display flex
</style>
