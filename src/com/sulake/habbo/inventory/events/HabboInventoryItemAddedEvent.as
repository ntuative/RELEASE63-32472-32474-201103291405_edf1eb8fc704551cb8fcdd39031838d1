package com.sulake.habbo.inventory.events
{
   import flash.events.Event;
   
   public class HabboInventoryItemAddedEvent extends Event
   {
      
      public static const HABBO_INVENTORY_ITEM_ADDED:String = "HABBO_INVENTORY_ITEM_ADDED";
       
      
      private var var_1991:int;
      
      private var var_2123:int;
      
      public function HabboInventoryItemAddedEvent(param1:int, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(HABBO_INVENTORY_ITEM_ADDED,param3,param4);
         this.var_1991 = param1;
         this.var_2123 = param2;
      }
      
      public function get classId() : int
      {
         return this.var_1991;
      }
      
      public function get stripId() : int
      {
         return this.var_2123;
      }
   }
}
