package com.sulake.habbo.room.events
{
   public class RoomEngineObjectEvent extends RoomEngineEvent
   {
      
      public static const const_774:String = "REOE_OBJECT_SELECTED";
      
      public static const const_481:String = "REOE_OBJECT_DESELECTED";
      
      public static const const_382:String = "REOB_OBJECT_ADDED";
      
      public static const const_719:String = "REOE_OBJECT_REMOVED";
      
      public static const const_170:String = "REOB_OBJECT_PLACED";
      
      public static const const_732:String = "REOB_OBJECT_REQUEST_MOVE";
      
      public static const const_136:String = "REOE_WIDGET_REQUEST_PLACEHOLDER";
      
      public static const ROOM_OBJECT_WIDGET_REQUEST_CREDITFURNI:String = "REOE_WIDGET_REQUEST_CREDITFURNI";
      
      public static const const_133:String = "REOE_WIDGET_REQUEST_STICKIE";
      
      public static const const_129:String = "REOE_WIDGET_REQUEST_PRESENT";
      
      public static const const_142:String = "REOE_WIDGET_REQUEST_TROPHY";
      
      public static const ROOM_OBJECT_WIDGET_REQUEST_TEASER:String = "REOE_WIDGET_REQUEST_TEASER";
      
      public static const const_148:String = "REOE_WIDGET_REQUEST_ECOTRONBOX";
      
      public static const const_140:String = "REOE_WIDGET_REQUEST_DIMMER";
      
      public static const const_104:String = "REOR_REMOVE_DIMMER";
      
      public static const const_149:String = "REOR_REQUEST_CLOTHING_CHANGE";
      
      public static const const_143:String = "REOR_WIDGET_REQUEST_PLAYLIST_EDITOR";
      
      public static const const_454:String = "REOE_ROOM_AD_FURNI_CLICK";
      
      public static const const_472:String = "REOE_ROOM_AD_FURNI_DOUBLE_CLICK";
      
      public static const const_511:String = "REOE_ROOM_AD_TOOLTIP_SHOW";
      
      public static const const_524:String = "REOE_ROOM_AD_TOOLTIP_HIDE";
       
      
      private var var_346:int;
      
      private var _category:int;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function RoomEngineObjectEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param3,param6,param7);
         this.var_346 = param4;
         this._category = param5;
      }
      
      public function get objectId() : int
      {
         return this.var_346;
      }
      
      public function get category() : int
      {
         return this._category;
      }
   }
}
