package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_229:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2798:int = 0;
      
      private var var_2796:int = 0;
      
      private var var_2795:int = 0;
      
      private var var_2797:Boolean = false;
      
      private var var_2167:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_229,param6,param7);
         this.var_2798 = param1;
         this.var_2796 = param2;
         this.var_2795 = param3;
         this.var_2797 = param4;
         this.var_2167 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2798;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2796;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2795;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2797;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2167;
      }
   }
}
