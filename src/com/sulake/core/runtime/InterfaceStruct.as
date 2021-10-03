package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1553:IID;
      
      private var var_2021:String;
      
      private var var_107:IUnknown;
      
      private var var_835:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1553 = param1;
         this.var_2021 = getQualifiedClassName(this.var_1553);
         this.var_107 = param2;
         this.var_835 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1553;
      }
      
      public function get iis() : String
      {
         return this.var_2021;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_107;
      }
      
      public function get references() : uint
      {
         return this.var_835;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_107 == null;
      }
      
      public function dispose() : void
      {
         this.var_1553 = null;
         this.var_2021 = null;
         this.var_107 = null;
         this.var_835 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_835;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_835) : uint(0);
      }
   }
}
