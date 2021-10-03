package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1047:int = 1;
      
      public static const const_708:int = 2;
      
      public static const const_931:int = 3;
      
      public static const const_1627:int = 4;
       
      
      private var _index:int;
      
      private var var_2440:String;
      
      private var var_2442:String;
      
      private var var_2438:Boolean;
      
      private var var_2441:String;
      
      private var var_874:String;
      
      private var var_2439:int;
      
      private var var_2202:int;
      
      private var _type:int;
      
      private var var_2242:String;
      
      private var var_935:GuestRoomData;
      
      private var var_936:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2440 = param1.readString();
         this.var_2442 = param1.readString();
         this.var_2438 = param1.readInteger() == 1;
         this.var_2441 = param1.readString();
         this.var_874 = param1.readString();
         this.var_2439 = param1.readInteger();
         this.var_2202 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1047)
         {
            this.var_2242 = param1.readString();
         }
         else if(this._type == const_931)
         {
            this.var_936 = new PublicRoomData(param1);
         }
         else if(this._type == const_708)
         {
            this.var_935 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_935 != null)
         {
            this.var_935.dispose();
            this.var_935 = null;
         }
         if(this.var_936 != null)
         {
            this.var_936.dispose();
            this.var_936 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2440;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2442;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2438;
      }
      
      public function get picText() : String
      {
         return this.var_2441;
      }
      
      public function get picRef() : String
      {
         return this.var_874;
      }
      
      public function get folderId() : int
      {
         return this.var_2439;
      }
      
      public function get tag() : String
      {
         return this.var_2242;
      }
      
      public function get userCount() : int
      {
         return this.var_2202;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_935;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_936;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1047)
         {
            return 0;
         }
         if(this.type == const_708)
         {
            return this.var_935.maxUserCount;
         }
         if(this.type == const_931)
         {
            return this.var_936.maxUsers;
         }
         return 0;
      }
   }
}
