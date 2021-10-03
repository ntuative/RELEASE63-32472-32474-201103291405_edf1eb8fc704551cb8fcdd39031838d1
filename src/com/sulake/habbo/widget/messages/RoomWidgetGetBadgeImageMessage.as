package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_763:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_325:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_763);
         this.var_325 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_325;
      }
   }
}
