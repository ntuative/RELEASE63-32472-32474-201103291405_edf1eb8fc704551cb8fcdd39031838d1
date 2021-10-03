package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2275:int;
      
      private var var_2277:int;
      
      private var var_2276:int;
      
      private var var_2274:String;
      
      private var var_1709:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2275 = param1.readInteger();
         this.var_2277 = param1.readInteger();
         this.var_2276 = param1.readInteger();
         this.var_2274 = param1.readString();
         this.var_1709 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2275;
      }
      
      public function get minute() : int
      {
         return this.var_2277;
      }
      
      public function get chatterId() : int
      {
         return this.var_2276;
      }
      
      public function get chatterName() : String
      {
         return this.var_2274;
      }
      
      public function get msg() : String
      {
         return this.var_1709;
      }
   }
}
