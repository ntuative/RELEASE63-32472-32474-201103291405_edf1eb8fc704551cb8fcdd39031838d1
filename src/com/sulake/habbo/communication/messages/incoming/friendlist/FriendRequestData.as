package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1220:int;
      
      private var var_2199:String;
      
      private var var_2200:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1220 = param1.readInteger();
         this.var_2199 = param1.readString();
         this.var_2200 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1220;
      }
      
      public function get requesterName() : String
      {
         return this.var_2199;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2200;
      }
   }
}
