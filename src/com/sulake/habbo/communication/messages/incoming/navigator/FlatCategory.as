package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1951:int;
      
      private var var_2571:String;
      
      private var var_319:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1951 = param1.readInteger();
         this.var_2571 = param1.readString();
         this.var_319 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1951;
      }
      
      public function get nodeName() : String
      {
         return this.var_2571;
      }
      
      public function get visible() : Boolean
      {
         return this.var_319;
      }
   }
}
