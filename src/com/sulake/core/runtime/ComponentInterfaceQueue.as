package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1769:IID;
      
      private var var_752:Boolean;
      
      private var var_1158:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1769 = param1;
         this.var_1158 = new Array();
         this.var_752 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1769;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_752;
      }
      
      public function get receivers() : Array
      {
         return this.var_1158;
      }
      
      public function dispose() : void
      {
         if(!this.var_752)
         {
            this.var_752 = true;
            this.var_1769 = null;
            while(this.var_1158.length > 0)
            {
               this.var_1158.pop();
            }
            this.var_1158 = null;
         }
      }
   }
}
