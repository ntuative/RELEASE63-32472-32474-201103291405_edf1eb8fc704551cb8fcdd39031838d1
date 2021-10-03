package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1537:int = 1;
      
      public static const const_1956:int = 2;
      
      public static const const_1484:int = 3;
      
      public static const const_1731:int = 4;
       
      
      private var var_1341:int = 0;
      
      private var var_1342:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1341 = 0;
         this.var_1342 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1341 = param1.readInteger();
         if(this.var_1341 == 3)
         {
            this.var_1342 = param1.readString();
         }
         else
         {
            this.var_1342 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1341;
      }
      
      public function get parameter() : String
      {
         return this.var_1342;
      }
   }
}
