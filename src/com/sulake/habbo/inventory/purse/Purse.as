package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1803:int = 0;
      
      private var var_1802:int = 0;
      
      private var var_2676:int = 0;
      
      private var var_2675:Boolean = false;
      
      private var var_2474:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1803 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1802 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2676 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2675 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2474 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1803;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1802;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2676;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2675;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2474;
      }
   }
}
