package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2506:int;
      
      private var var_2509:int;
      
      private var var_2508:String;
      
      private var var_2507:int;
      
      private var var_2510:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2506 = param1;
         this.var_2509 = param2;
         this.var_2508 = param3;
         this.var_2507 = param4;
         this.var_2510 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2506,this.var_2509,this.var_2508,this.var_2507,int(this.var_2510)];
      }
      
      public function dispose() : void
      {
      }
   }
}
