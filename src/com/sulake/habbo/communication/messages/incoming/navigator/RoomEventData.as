package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1120:Boolean;
      
      private var var_2352:int;
      
      private var var_2351:String;
      
      private var var_389:int;
      
      private var var_2355:int;
      
      private var var_2354:String;
      
      private var var_2350:String;
      
      private var var_2353:String;
      
      private var var_852:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_852 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1120 = false;
            return;
         }
         this.var_1120 = true;
         this.var_2352 = int(_loc2_);
         this.var_2351 = param1.readString();
         this.var_389 = int(param1.readString());
         this.var_2355 = param1.readInteger();
         this.var_2354 = param1.readString();
         this.var_2350 = param1.readString();
         this.var_2353 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_852.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2352;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2351;
      }
      
      public function get flatId() : int
      {
         return this.var_389;
      }
      
      public function get eventType() : int
      {
         return this.var_2355;
      }
      
      public function get eventName() : String
      {
         return this.var_2354;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2350;
      }
      
      public function get creationTime() : String
      {
         return this.var_2353;
      }
      
      public function get tags() : Array
      {
         return this.var_852;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1120;
      }
   }
}
