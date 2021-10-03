package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1102:Sound = null;
      
      private var var_266:SoundChannel = null;
      
      private var var_510:Number;
      
      private var _complete:Boolean;
      
      public function HabboSound(param1:Sound)
      {
         super();
         this.var_1102 = param1;
         this.var_1102.addEventListener(Event.COMPLETE,this.onComplete);
         this.var_510 = 1;
         this._complete = false;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         this._complete = false;
         this.var_266 = this.var_1102.play(0);
         this.volume = this.var_510;
         return true;
      }
      
      public function stop() : Boolean
      {
         this.var_266.stop();
         return true;
      }
      
      public function get volume() : Number
      {
         return this.var_510;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_510 = param1;
         if(this.var_266 != null)
         {
            this.var_266.soundTransform = new SoundTransform(this.var_510);
         }
      }
      
      public function get position() : Number
      {
         return this.var_266.position;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get length() : Number
      {
         return this.var_1102.length;
      }
      
      public function get ready() : Boolean
      {
         return !this.var_1102.isBuffering;
      }
      
      public function get finished() : Boolean
      {
         return !this._complete;
      }
      
      private function onComplete(param1:Event) : void
      {
         this._complete = true;
      }
   }
}
