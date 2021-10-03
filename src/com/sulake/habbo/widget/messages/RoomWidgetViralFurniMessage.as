package com.sulake.habbo.widget.messages
{
   public class RoomWidgetViralFurniMessage extends RoomWidgetMessage
   {
      
      public static const const_637:String = "RWVFM_VIRAL_FOUND";
      
      public static const const_164:String = "RWVFM_OPEN_PRESENT";
       
      
      private var var_346:int;
      
      public function RoomWidgetViralFurniMessage(param1:String)
      {
         super(param1);
      }
      
      public function get objectId() : int
      {
         return this.var_346;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_346 = param1;
      }
   }
}
