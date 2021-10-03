package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_2373:Number = 0;
      
      private var var_2371:Number = 0;
      
      private var var_2376:Number = 0;
      
      private var var_2372:Number = 0;
      
      private var var_384:int = 0;
      
      private var var_2374:int = 0;
      
      private var var_333:Array;
      
      private var var_2375:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_333 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_171 = param3;
         this.var_172 = param4;
         this.var_2373 = param5;
         this.var_384 = param6;
         this.var_2374 = param7;
         this.var_2371 = param8;
         this.var_2376 = param9;
         this.var_2372 = param10;
         this.var_2375 = param11;
         this.var_333 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function get z() : Number
      {
         return this.var_172;
      }
      
      public function get localZ() : Number
      {
         return this.var_2373;
      }
      
      public function get targetX() : Number
      {
         return this.var_2371;
      }
      
      public function get targetY() : Number
      {
         return this.var_2376;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2372;
      }
      
      public function get dir() : int
      {
         return this.var_384;
      }
      
      public function get dirHead() : int
      {
         return this.var_2374;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2375;
      }
      
      public function get actions() : Array
      {
         return this.var_333.slice();
      }
   }
}
