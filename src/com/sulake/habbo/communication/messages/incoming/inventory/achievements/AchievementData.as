package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1522:int;
      
      private var var_325:String;
      
      private var var_2381:int;
      
      private var var_2380:int;
      
      private var var_1978:int;
      
      private var var_2379:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1522 = param1.readInteger();
         this.var_325 = param1.readString();
         this.var_2381 = param1.readInteger();
         this.var_2380 = param1.readInteger();
         this.var_1978 = param1.readInteger();
         this.var_2379 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_325;
      }
      
      public function get level() : int
      {
         return this.var_1522;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2381;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2380;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1978;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2379;
      }
   }
}
