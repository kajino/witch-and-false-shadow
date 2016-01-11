<template lang="jade">
header
  img(src="public/img/logo2.png")
#container
  ul#menu
    li(v-bind:class="{active: select == 'overview'}")
      a(href="#" @click="onClickMenu('overview', 'overview')") 概要
    li(v-bind:class="{active: select == 'world'}")
      a(href="#" @click="onClickMenu('world', 'prologue')") 世界観
      ul
        li(@click="onClickMenu('world', 'prologue')" v-bind:class="{active: subSelect == 'prologue'}")
          a プロローグ
        li(@click="onClickMenu('world', 'kageoni')" v-bind:class="{active: subSelect == 'kageoni'}")
          a 影鬼
        li(@click="onClickMenu('world', 'kagemori')" v-bind:class="{active: subSelect == 'kagemori'}")
          a 影守の一族
    li(v-bind:class="{active: select == 'character'}")
      a(href="#" @click="onClickMenu('character', 'shatte')") キャラクター
      ul
        li(@click="onClickMenu('character', 'shatte')" v-bind:class="{active: subSelect == 'shatte'}")
          a シャッテ
        li(@click="onClickMenu('character', 'ranta')" v-bind:class="{active: subSelect == 'ranta'}")
          a ランタ
    li(v-bind:class="{active: select == 'system'}")
      a(href="#" @click="onClickMenu('system', 'player')") 戦闘システム
      ul
        li(@click="onClickMenu('system', 'player')" v-bind:class="{active: subSelect == 'player'}")
          a プレイヤー操作
        li(@click="onClickMenu('system', 'light')" v-bind:class="{active: subSelect == 'light'}")
          a ライト操作
        li(@click="onClickMenu('system', 'view')" v-bind:class="{active: subSelect == 'view'}")
          a 視点操作
  #content
    #overview(v-bind:class="{active: subSelect == 'overview'}")
      overview
    #world-prologue(v-bind:class="{active: subSelect == 'prologue'}")
      world-prologue
    #world-kageoni(v-bind:class="{active: subSelect == 'kageoni'}")
      world-kageoni
    #world-kagemori(v-bind:class="{active: subSelect == 'kagemori'}")
      world-kagemori
    #character-shatte(v-bind:class="{active: subSelect == 'shatte'}")
      character-shatte
    #character-ranta(v-bind:class="{active: subSelect == 'ranta'}")
      character-ranta
    #system-player(v-bind:class="{active: subSelect == 'player'}")
      system-player(v-bind:select.sync="imgSelect")
    #system-light(v-bind:class="{active: subSelect == 'light'}")
      system-light(v-bind:select.sync="imgSelect")
    #system-view(v-bind:class="{active: subSelect == 'view'}")
      system-view

div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'stamp'}")
  img(src="public/img/action/stamp.png")
div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'insite'}")
  img(src="public/img/action/insite.png")
div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'harai'}")
  img(src="public/img/action/harai.png")
div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'dive'}")
  img(src="public/img/action/dive.png")
div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'marionette'}")
  img(src="public/img/action/marionette.png")
div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'bind'}")
  img(src="public/img/action/bind.png")
div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'jump'}")
  img(src="public/img/action/jump.png")

</template>

<script lang="coffee">
module.exports =
  data: ->
    select: "overview"
    subSelect: "overview"
    imgSelect: ""
  methods:
    onClickMenu: (name, subName) ->
      @select = name
      @subSelect = subName
    onClickImg: (name) ->
      @imgSelect = name
  components:
    'overview': require "./overview/overview.vue"
    'world-prologue': require "./world/prologue.vue"
    'world-kagemori': require "./world/kagemori.vue"
    'world-kageoni': require "./world/kageoni.vue"
    'character-shatte': require "./character/shatte.vue"
    'character-ranta': require "./character/ranta.vue"
    'system-player': require "./system/player.vue"
    'system-light': require "./system/light.vue"
    'system-view': require "./system/view.vue"
</script>

<style lang="stylus">
header-height = 100px
*
  padding 0
  margin 0
  line-height 1
  box-sizing border-box
  color #fff
  font-family "陸隷", Verdana, "游ゴシック", YuGothic, "Hiragino Kaku Gothic ProN", Meiryo, sans-serif
html, body
  height 100%
a
  text-decoration none
  color #fff
ul
  list-style none
#app
  opacity 0
  animation-duration 1s
  animation-name fade-in
  animation-timing-function ease
  animation-fill-mode forwards
  background-color black
  height 100%
  background url(public/img/bg.jpg) no-repeat
  background-size cover
  header
    position absolute
    width 100%
    height header-height
    background linear-gradient(to bottom, rgba(0,0,0,0.8) 0%,rgba(0,0,0,0) 100%)
    img
      height 100px
      padding 10px
  #container
    padding header-height 0 50px
    height 100%
    display flex
    #content
      position relative
      overflow-y scroll
      overflow-x hidden
      flex 1 0 0
      margin 15px 35px 15px 15px
      height 100%
      > *
        position absolute
        top 0
        left 0
        transform translate(40px , 0)
        width 100%
        background rgba(0,0,0, 0.5)
        opacity 0
        transition all .5s ease
        overflow hidden
        padding 15px
        max-height 100px
      .active
        transform translate(0 , 0)
        opacity 1
        max-height 3000px
    #menu
      flex 0 0 200px
      margin 15px 0 15px 15px
      overflow hidden
      > li
        transition all .3s ease
        a
          display block
          padding 15px
          background rgba(0,0,0, 0.5)
        &:hover, &:active, &.active
          transform translate(10px , 0)
          ul
            max-height 400px
        ul
          max-height 0
          transition: all 1s ease
          overflow hidden
          li
            transition all .3s ease
            padding-left 10px
            &:hover, &:active, &.active
              transform translate(10px , 0)
            a
              padding 10px
@keyframes fade-in
  0%
    opacity 0
  100%
    opacity 1
</style>
