package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_368:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_581:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_690:int;
      
      private var var_2357:Boolean;
      
      private var var_417:Boolean;
      
      private var var_1746:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_690 = param2;
         this.var_2357 = param3;
         this.var_417 = param4;
         this.var_1746 = param5;
      }
      
      public function get position() : int
      {
         return this.var_690;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2357;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_417;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_1746;
      }
   }
}
