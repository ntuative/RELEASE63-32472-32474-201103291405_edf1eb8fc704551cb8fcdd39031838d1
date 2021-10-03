package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2102:String;
      
      private var var_2104:Array;
      
      private var var_2103:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2102 = param1;
         this.var_2104 = param2;
         this.var_2103 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2102;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2104;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2103;
      }
   }
}
