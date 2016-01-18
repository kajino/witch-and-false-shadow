<template lang="jade">
header
  img(src="public/img/logo.png")
#container
  ul#menu
    li(v-bind:class="{active: select == 'overview'}")
      a(href="javescript:void(0)" @click="onClickMenu('overview', 'overview')") 概要
    li(v-bind:class="{active: select == 'world'}")
      a(href="javescript:void(0)" @click="onClickMenu('world', 'prologue')") 世界観
      ul
        li(@click="onClickMenu('world', 'prologue')" v-bind:class="{active: subSelect == 'prologue'}")
          a プロローグ
        li(@click="onClickMenu('world', 'kageoni')" v-bind:class="{active: subSelect == 'kageoni'}")
          a 影鬼
        li(@click="onClickMenu('world', 'kagemori')" v-bind:class="{active: subSelect == 'kagemori'}")
          a 影守の一族
    li(v-bind:class="{active: select == 'character'}")
      a(href="javescript:void(0)" @click="onClickMenu('character', 'shatte')") キャラクター
      ul
        li(@click="onClickMenu('character', 'shatte')" v-bind:class="{active: subSelect == 'shatte'}")
          a シャッテ
        li(@click="onClickMenu('character', 'ranta')" v-bind:class="{active: subSelect == 'ranta'}")
          a ランタ
    li(v-bind:class="{active: select == 'system'}")
      a(href="javescript:void(0)" @click="onClickMenu('system', 'player')") 戦闘システム
      ul
        li(@click="onClickMenu('system', 'player')" v-bind:class="{active: subSelect == 'player'}")
          a プレイヤー操作
        li(@click="onClickMenu('system', 'light')" v-bind:class="{active: subSelect == 'light'}")
          a ライト操作
        li(@click="onClickMenu('system', 'view')" v-bind:class="{active: subSelect == 'view'}")
          a 視点操作
    li(v-bind:class="{active: select == 'download'}")
      a(href="javescript:void(0)" @click="onClickMenu('download', 'download')") 体験版
    li.circle
      a(href="http://diceycraft.wpblog.jp" target="_blank")
        img(src="public/img/diceycraft.png")
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
    #download(v-bind:class="{active: subSelect == 'download'}")
      download

div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'stamp'}")
  img(src="public/img/action/stamp.jpg")
div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'insite'}")
  img(src="public/img/action/insite.png")
div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'harai'}")
  img(src="public/img/action/harai.jpg")
div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'dive'}")
  img(src="public/img/action/dive.jpg")
div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'marionette'}")
  img(src="public/img/action/marionette.jpg")
div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'bind'}")
  img(src="public/img/action/bind.png")
div.action-modal(@click="onClickImg('')" v-bind:class="{active: imgSelect == 'jump'}")
  img(src="public/img/action/jump.jpg")

div#bat1
  | {{""}}
div#bat2
  | {{""}}
div#bat3
  | {{""}}
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
    'download': require "./download/download.vue"
</script>

<style lang="stylus">
header-height = 140px
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
#seo
  position absolute
  height 0
  width 0
  overflow hidden
  opacity 0
#app
  position relative
  z-index 0
  opacity 0
  animation-duration 1s
  animation-delay 1s
  animation-name fade-in
  animation-timing-function ease
  animation-fill-mode forwards
  height 100%
  background black url(public/img/bg.jpg) no-repeat
  background-size cover
  background-position fixed
  header
    position absolute
    width 100%
    height header-height
    background linear-gradient(to bottom, rgba(0,0,0,0.8) 0%,rgba(0,0,0,0) 100%)
    img
      height 130px
      padding 10px
  #container
    padding header-height 0 0
    height 100%
    display flex
    #content
      position relative
      //overflow-y scroll
      //overflow-x hidden
      flex 1 0 0
      margin 0 35px 0 15px
      height 100%
      > *
        //position absolute
        //top 0
        //left 0
        transform translate(40px , 0)
        width 100%
        background rgba(0,0,0, 0.5)
        opacity 0
        transition all .5s ease
        overflow hidden
        padding 25px
        max-height 100px
        display none
        margin-bottom 15px
      .active
        transform translate(0 , 0)
        opacity 1
        max-height 3000px
        display block
    #menu
      flex 0 0 200px
      margin 0 0 15px 15px
      overflow hidden
      > li
        transition all .3s ease
        a
          display block
          padding 15px
          background rgba(0,0,0, 0.5)
          font-size 20px
        &.circle
          a
            padding 8px 15px
            display block
            img
              width 100%
        &.active
          > a
            background rgba(0,0,0, 0.7)
          ul
            max-height 400px
        &:hover, &:active
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
            &.active
              > a
                background rgba(0,0,0, 0.7)
            &:hover, &:active
              transform translate(10px , 0)
            a
              padding 10px
              font-size 18px
#bat1
  position fixed
  top 20px
  right 10px
  z-index 1
  width 200px
  height 141px
  background url(public/img/bat1.png) no-repeat
  background-size contain
#bat3
  position fixed
  bottom 20px
  left 10px
  z-index 1
  width 200px
  height 141px
  background url(public/img/bat1.png) no-repeat
  background-size contain
  transform scale(-1, 1)
#bat2
  position fixed
  bottom 20px
  right 10px
  z-index 1
  width 200px
  height 50px
  background url(public/img/bat2.png) no-repeat
  background-size contain
@keyframes fade-in
  0%
    opacity 0
  100%
    opacity 1
</style>
