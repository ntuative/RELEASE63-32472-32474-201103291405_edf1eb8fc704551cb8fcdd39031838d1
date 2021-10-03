package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_389:int;
      
      private var var_2202:int;
      
      private var var_2715:Boolean;
      
      private var var_2425:int;
      
      private var _ownerName:String;
      
      private var var_123:RoomData;
      
      private var var_829:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_389 = param1.readInteger();
         this.var_2202 = param1.readInteger();
         this.var_2715 = param1.readBoolean();
         this.var_2425 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_123 = new RoomData(param1);
         this.var_829 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_123 != null)
         {
            this.var_123.dispose();
            this.var_123 = null;
         }
         if(this.var_829 != null)
         {
            this.var_829.dispose();
            this.var_829 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_389;
      }
      
      public function get userCount() : int
      {
         return this.var_2202;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2715;
      }
      
      public function get ownerId() : int
      {
         return this.var_2425;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_123;
      }
      
      public function get event() : RoomData
      {
         return this.var_829;
      }
   }
}
