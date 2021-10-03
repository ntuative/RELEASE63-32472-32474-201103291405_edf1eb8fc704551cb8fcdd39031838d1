package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1669:int;
      
      private var var_2280:int;
      
      private var var_1505:int;
      
      private var var_2126:int;
      
      private var var_123:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1669 = param1.readInteger();
         this.var_2280 = param1.readInteger();
         this.var_1505 = param1.readInteger();
         this.var_2126 = param1.readInteger();
         this.var_123 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1669);
      }
      
      public function get callId() : int
      {
         return this.var_1669;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2280;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1505;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2126;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_123;
      }
   }
}
