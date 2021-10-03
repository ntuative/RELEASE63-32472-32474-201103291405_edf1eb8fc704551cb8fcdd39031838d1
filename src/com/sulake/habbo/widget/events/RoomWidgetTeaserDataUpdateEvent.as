package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_585:String = "RWTDUE_TEASER_DATA";
      
      public static const const_819:String = "RWTDUE_GIFT_DATA";
      
      public static const const_755:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_346:int;
      
      private var _data:String;
      
      private var var_403:int;
      
      private var var_188:String;
      
      private var var_2504:String;
      
      private var var_2638:Boolean;
      
      private var var_1472:int = 0;
      
      private var var_2727:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_346;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_403;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2504;
      }
      
      public function get method_2() : Boolean
      {
         return this.var_2638;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2727;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1472;
      }
      
      public function set status(param1:int) : void
      {
         this.var_403 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2504 = param1;
      }
      
      public function set method_2(param1:Boolean) : void
      {
         this.var_2638 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2727 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_346 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_188;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_188 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1472 = param1;
      }
   }
}
