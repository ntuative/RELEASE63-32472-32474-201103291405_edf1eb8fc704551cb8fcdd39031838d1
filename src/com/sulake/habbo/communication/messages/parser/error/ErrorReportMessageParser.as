package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1702:int;
      
      private var var_1876:int;
      
      private var var_1875:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1876 = param1.readInteger();
         this.var_1702 = param1.readInteger();
         this.var_1875 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1702 = 0;
         this.var_1876 = 0;
         this.var_1875 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1702;
      }
      
      public function get messageId() : int
      {
         return this.var_1876;
      }
      
      public function get timestamp() : String
      {
         return this.var_1875;
      }
   }
}
