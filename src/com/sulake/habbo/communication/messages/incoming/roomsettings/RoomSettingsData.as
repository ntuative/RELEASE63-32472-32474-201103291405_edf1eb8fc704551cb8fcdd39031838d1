package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_483:int = 0;
      
      public static const const_185:int = 1;
      
      public static const const_112:int = 2;
      
      public static const const_688:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1866:String;
      
      private var var_2151:int;
      
      private var var_1398:int;
      
      private var var_2154:int;
      
      private var var_2149:int;
      
      private var var_852:Array;
      
      private var var_2150:Array;
      
      private var var_2147:int;
      
      private var var_2153:Boolean;
      
      private var var_2152:Boolean;
      
      private var var_2155:Boolean;
      
      private var var_2148:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2153;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2153 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2152;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2152 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2155;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2155 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2148;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2148 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1866;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1866 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2151;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2151 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1398;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1398 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2154;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2154 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2149;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2149 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_852;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_852 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2150;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2150 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2147;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2147 = param1;
      }
   }
}
