package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_137:String = "ROE_MOUSE_CLICK";
      
      public static const const_1878:String = "ROE_MOUSE_ENTER";
      
      public static const const_553:String = "ROE_MOUSE_MOVE";
      
      public static const const_1977:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1906:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1796:String = "";
      
      private var var_2333:Boolean;
      
      private var var_2332:Boolean;
      
      private var var_2330:Boolean;
      
      private var var_2331:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1796 = param2;
         this.var_2333 = param5;
         this.var_2332 = param6;
         this.var_2330 = param7;
         this.var_2331 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1796;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2333;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2332;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2330;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2331;
      }
   }
}
