package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SpinWheelOfFortuneMessageComposer implements IMessageComposer
   {
       
      
      private var var_346:int;
      
      public function SpinWheelOfFortuneMessageComposer(param1:int)
      {
         super();
         this.var_346 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_346];
      }
   }
}
