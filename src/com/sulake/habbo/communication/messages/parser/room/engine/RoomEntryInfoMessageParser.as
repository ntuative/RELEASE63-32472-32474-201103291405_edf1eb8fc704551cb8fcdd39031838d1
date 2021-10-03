package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1635:Boolean;
      
      private var var_2208:int;
      
      private var var_457:Boolean;
      
      private var var_1086:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1635;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2208;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1086;
      }
      
      public function get owner() : Boolean
      {
         return this.var_457;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1086 != null)
         {
            this.var_1086.dispose();
            this.var_1086 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1635 = param1.readBoolean();
         if(this.var_1635)
         {
            this.var_2208 = param1.readInteger();
            this.var_457 = param1.readBoolean();
         }
         else
         {
            this.var_1086 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
