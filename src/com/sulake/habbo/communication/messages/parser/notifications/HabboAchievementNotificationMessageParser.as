package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1522:int;
      
      private var var_1688:int;
      
      private var var_2380:int;
      
      private var var_1978:int;
      
      private var var_1521:int;
      
      private var var_2399:String = "";
      
      private var var_2698:String = "";
      
      private var var_2697:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1522 = param1.readInteger();
         this.var_2399 = param1.readString();
         this.var_1688 = param1.readInteger();
         this.var_2380 = param1.readInteger();
         this.var_1978 = param1.readInteger();
         this.var_1521 = param1.readInteger();
         this.var_2697 = param1.readInteger();
         this.var_2698 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1522;
      }
      
      public function get points() : int
      {
         return this.var_1688;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2380;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1978;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1521;
      }
      
      public function get badgeID() : String
      {
         return this.var_2399;
      }
      
      public function get achievementID() : int
      {
         return this.var_2697;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2698;
      }
   }
}
