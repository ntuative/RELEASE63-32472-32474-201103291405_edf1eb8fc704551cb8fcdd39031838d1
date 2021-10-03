package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_2096:int;
      
      private var var_1778:Number;
      
      private var var_2444:Number;
      
      private var var_2445:int;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number)
      {
         super();
         this.var_2096 = param1;
         this.var_1778 = param2;
         this.var_2444 = param3;
         this.var_2445 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_2096;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1778 < 0)
         {
            return 0;
         }
         return this.var_1778 + (getTimer() - this.var_2445) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2444;
      }
   }
}
