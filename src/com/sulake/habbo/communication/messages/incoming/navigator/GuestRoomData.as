package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_389:int;
      
      private var var_829:Boolean;
      
      private var var_884:String;
      
      private var _ownerName:String;
      
      private var var_2151:int;
      
      private var var_2202:int;
      
      private var var_2203:int;
      
      private var var_1866:String;
      
      private var var_2201:int;
      
      private var var_2206:Boolean;
      
      private var var_749:int;
      
      private var var_1398:int;
      
      private var var_2205:String;
      
      private var var_852:Array;
      
      private var var_2204:RoomThumbnailData;
      
      private var var_2153:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_852 = new Array();
         super();
         this.var_389 = param1.readInteger();
         this.var_829 = param1.readBoolean();
         this.var_884 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2151 = param1.readInteger();
         this.var_2202 = param1.readInteger();
         this.var_2203 = param1.readInteger();
         this.var_1866 = param1.readString();
         this.var_2201 = param1.readInteger();
         this.var_2206 = param1.readBoolean();
         this.var_749 = param1.readInteger();
         this.var_1398 = param1.readInteger();
         this.var_2205 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_852.push(_loc4_);
            _loc3_++;
         }
         this.var_2204 = new RoomThumbnailData(param1);
         this.var_2153 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_852 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_389;
      }
      
      public function get event() : Boolean
      {
         return this.var_829;
      }
      
      public function get roomName() : String
      {
         return this.var_884;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2151;
      }
      
      public function get userCount() : int
      {
         return this.var_2202;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2203;
      }
      
      public function get description() : String
      {
         return this.var_1866;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2201;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2206;
      }
      
      public function get score() : int
      {
         return this.var_749;
      }
      
      public function get categoryId() : int
      {
         return this.var_1398;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2205;
      }
      
      public function get tags() : Array
      {
         return this.var_852;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2204;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2153;
      }
   }
}
