package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_2592:int;
      
      private var var_2593:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         this.var_2592 = param1;
         this.var_2593 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2592,this.var_2593];
      }
      
      public function dispose() : void
      {
      }
   }
}
