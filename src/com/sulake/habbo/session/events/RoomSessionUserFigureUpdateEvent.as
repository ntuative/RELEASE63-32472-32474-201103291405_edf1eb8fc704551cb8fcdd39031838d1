package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_172:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var var_643:String = "";
      
      private var var_995:String = "";
      
      private var var_1744:String = "";
      
      private var var_2307:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_172,param1,param7,param8);
         this._userId = param2;
         this.var_643 = param3;
         this.var_995 = param4;
         this.var_1744 = param5;
         this.var_2307 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function get gender() : String
      {
         return this.var_995;
      }
      
      public function get customInfo() : String
      {
         return this.var_1744;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2307;
      }
   }
}
