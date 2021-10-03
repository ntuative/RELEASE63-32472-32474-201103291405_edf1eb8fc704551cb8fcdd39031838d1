package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_346:int = 0;
      
      private var var_1867:int = 0;
      
      private var var_1675:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_346;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1867;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1675;
      }
      
      public function flush() : Boolean
      {
         this.var_346 = 0;
         this.var_1867 = 0;
         this.var_1675 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_346 = param1.readInteger();
         this.var_1867 = param1.readInteger();
         this.var_1675 = param1.readString();
         return true;
      }
   }
}
