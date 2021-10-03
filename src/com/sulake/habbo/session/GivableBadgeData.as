package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_325:int;
      
      private var var_2382:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_325 = param1;
         this.var_2382 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_325;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2382;
      }
   }
}
