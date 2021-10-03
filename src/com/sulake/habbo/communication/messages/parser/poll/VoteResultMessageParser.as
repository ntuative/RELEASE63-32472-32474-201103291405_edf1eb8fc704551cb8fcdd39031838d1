package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1162:String;
      
      private var var_1485:Array;
      
      private var var_1204:Array;
      
      private var var_1927:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1162;
      }
      
      public function get choices() : Array
      {
         return this.var_1485.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1204.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1927;
      }
      
      public function flush() : Boolean
      {
         this.var_1162 = "";
         this.var_1485 = [];
         this.var_1204 = [];
         this.var_1927 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1162 = param1.readString();
         this.var_1485 = [];
         this.var_1204 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1485.push(param1.readString());
            this.var_1204.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1927 = param1.readInteger();
         return true;
      }
   }
}
