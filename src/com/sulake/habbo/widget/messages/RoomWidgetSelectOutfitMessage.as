package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1078:String = "select_outfit";
       
      
      private var var_2349:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1078);
         this.var_2349 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2349;
      }
   }
}
