package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1886:int;
      
      private var var_2566:String;
      
      private var var_995:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1886 = param1.readInteger();
         this.var_2566 = param1.readString();
         this.var_995 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1886;
      }
      
      public function get figureString() : String
      {
         return this.var_2566;
      }
      
      public function get gender() : String
      {
         return this.var_995;
      }
   }
}