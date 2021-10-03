package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2366:Number;
      
      private var var_1638:Number;
      
      private var var_925:Number;
      
      private var var_534:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2366 = param1;
         this.var_1638 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_925 = param1;
         this.var_534 = 0;
      }
      
      public function update() : void
      {
         this.var_925 += this.var_1638;
         this.var_534 += this.var_925;
         if(this.var_534 > 0)
         {
            this.var_534 = 0;
            this.var_925 = this.var_2366 * -1 * this.var_925;
         }
      }
      
      public function get location() : Number
      {
         return this.var_534;
      }
   }
}
