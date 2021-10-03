package com.sulake.habbo.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_737:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1640:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_737,false,false);
         this.var_1640 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1640;
      }
   }
}
