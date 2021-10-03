package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_186:int = 0;
       
      
      private var var_2396:int = 0;
      
      private var var_1426:Dictionary;
      
      private var var_1803:int = 0;
      
      private var var_1802:int = 0;
      
      private var var_2474:Boolean = false;
      
      private var var_2473:int = 0;
      
      private var var_2467:int = 0;
      
      public function Purse()
      {
         this.var_1426 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2396;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2396 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1803;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1803 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1802;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1802 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1803 > 0 || this.var_1802 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2474;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2474 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2473;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2473 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2467;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2467 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1426;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1426 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1426[param1];
      }
   }
}
