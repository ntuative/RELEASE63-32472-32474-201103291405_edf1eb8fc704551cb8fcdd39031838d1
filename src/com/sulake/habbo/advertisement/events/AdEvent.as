package com.sulake.habbo.advertisement.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class AdEvent extends Event
   {
      
      public static const const_572:String = "AE_ROOM_AD_SHOW";
      
      public static const const_486:String = "AE_INTERSTITIAL_SHOW";
      
      public static const const_465:String = "AE_INTERSTITIAL_COMPLETE";
       
      
      private var var_45:BitmapData;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var var_1059:String;
      
      private var var_2749:BitmapData;
      
      private var var_2750:BitmapData;
      
      public function AdEvent(param1:String, param2:int = 0, param3:int = 0, param4:BitmapData = null, param5:String = "", param6:BitmapData = null, param7:BitmapData = null, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param8,param9);
         this.var_45 = param4;
         this._roomId = param2;
         this._roomCategory = param3;
         this.var_1059 = param5;
         this.var_2749 = param6;
         this.var_2750 = param7;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get clickUrl() : String
      {
         return this.var_1059;
      }
      
      public function get adWarningL() : BitmapData
      {
         return this.var_2749;
      }
      
      public function get adWarningR() : BitmapData
      {
         return this.var_2750;
      }
   }
}
