package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_346:int;
      
      private var var_2431:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_346 = param1;
         this.var_2431 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_346,this.var_2431];
      }
      
      public function dispose() : void
      {
      }
   }
}
