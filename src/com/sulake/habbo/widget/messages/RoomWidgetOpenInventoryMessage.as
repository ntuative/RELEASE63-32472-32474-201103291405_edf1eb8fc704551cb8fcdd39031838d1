package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_792:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1134:String = "inventory_effects";
      
      public static const const_1123:String = "inventory_badges";
      
      public static const const_1690:String = "inventory_clothes";
      
      public static const const_1458:String = "inventory_furniture";
       
      
      private var var_2195:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_792);
         this.var_2195 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2195;
      }
   }
}
