<template lang="jade">
.overview
  video#pv.video-js(preload="auto" poster="public/img/top.png" src="public/img/shadow_pv.mp4" muted)
  h1(v-if="!isPlay")
    | 何でもアリの新感覚「影踏みアクション」！
  img#play(v-if="!isPlay" src="public/img/play.svg" @click="play()")
  img#pause(v-if="isPlay" src="public/img/pause.svg" @click="pause()")
  img#stop(v-if="isPlay" src="public/img/stop.svg" @click="stop()")
  img#prev(v-if="isPlay" src="public/img/prev.svg" @click="prev()")
  img#next(v-if="isPlay" src="public/img/prev.svg" @click="next()")
  img#vol-on(v-if="!isMute" src="public/img/vol_on.svg" @click="volumeOff()")
  img#vol-off(v-if="isMute" src="public/img/vol_off.svg" @click="volumeOn()")
</template>

<script lang="coffee">
module.exports =
  data: ->
    isPlay: false
    isMute: true
  methods:
    play: ->
      document.getElementById("pv").play()
      @isPlay = true
    pause: ->
      video = document.getElementById("pv").pause();
      @isPlay = false
    stop: ->
      video = document.getElementById("pv");
      video.currentTime = 0
      video.pause()
      @isPlay = false
    prev: ->
      video = document.getElementById("pv");
      if video.currentTime < 5
        video.currentTime = 0
      else
        video.currentTime -= 5
      video.play()
      @isPlay = true
    next: ->
      video = document.getElementById("pv");
      if video.currentTime >= video.duration - 5
        video.currentTime = video.duration
        video.pause()
        @isPlay = false
      else
        video.currentTime += 5
        video.play()
        @isPlay = true
    volumeOn: ->
      document.getElementById("pv").muted = false
      @isMute = false
    volumeOff: ->
      document.getElementById("pv").muted = true
      @isMute = true
</script>

<style lang="stylus">
#app
  #container
    #content
      #overview
        //height 100%
        padding 0
        background-color transparent
        width 100%
        position relative
        .overview
          position relative
          line-height 3
          text-align center
          width 100%
          background url(public/img/top.jpg) no-repeat
          background-size cover
          background-position top
          border solid 6px #fff
          border-radius 60px
          overflow hidden
          h1
            position absolute
            top 10%
            left 0
            padding 0 50px
            width 100%
          #pv
            width 100%
            height 56.6%
          #play
            position absolute
            top calc(50% - 50px)
            left calc(50% - 50px)
            width 100px
            height 100px
          #pause
            position absolute
            top calc(90% - 25px)
            left calc(90% - 225px)
            width 50px
            height 50px
          #stop
            position absolute
            top calc(90% - 25px)
            left calc(90% - 60px)
            width 50px
            height 50px
          #next
            position absolute
            transform scale(-1)
            top calc(90% - 25px)
            left calc(90% - 115px)
            width 50px
            height 50px
          #prev
            position absolute
            top calc(90% - 25px)
            left calc(90% - 170px)
            width 50px
            height 50px
          #vol-off,#vol-on
            position absolute
            top calc(90% - 25px)
            left calc(90% - 5px)
            width 50px
            height 50px

</style>
