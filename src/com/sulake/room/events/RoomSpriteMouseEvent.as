package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1796:String = "";
      
      private var var_1645:String = "";
      
      private var var_2118:String = "";
      
      private var var_2484:Number = 0;
      
      private var var_2483:Number = 0;
      
      private var var_2414:Number = 0;
      
      private var var_2413:Number = 0;
      
      private var var_2332:Boolean = false;
      
      private var var_2333:Boolean = false;
      
      private var var_2330:Boolean = false;
      
      private var var_2331:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1796 = param2;
         this.var_1645 = param3;
         this.var_2118 = param4;
         this.var_2484 = param5;
         this.var_2483 = param6;
         this.var_2414 = param7;
         this.var_2413 = param8;
         this.var_2332 = param9;
         this.var_2333 = param10;
         this.var_2330 = param11;
         this.var_2331 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1796;
      }
      
      public function get canvasId() : String
      {
         return this.var_1645;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2118;
      }
      
      public function get screenX() : Number
      {
         return this.var_2484;
      }
      
      public function get screenY() : Number
      {
         return this.var_2483;
      }
      
      public function get localX() : Number
      {
         return this.var_2414;
      }
      
      public function get localY() : Number
      {
         return this.var_2413;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2332;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2333;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2330;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2331;
      }
   }
}
