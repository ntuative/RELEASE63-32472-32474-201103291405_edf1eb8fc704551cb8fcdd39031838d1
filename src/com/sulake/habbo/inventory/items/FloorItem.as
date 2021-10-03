package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2081:String;
      
      protected var var_1559:Number;
      
      protected var var_2855:Boolean;
      
      protected var var_2854:Boolean;
      
      protected var var_2388:Boolean;
      
      protected var var_2497:Boolean;
      
      protected var var_2867:int;
      
      protected var var_2383:int;
      
      protected var var_2386:int;
      
      protected var var_2389:int;
      
      protected var var_1886:String;
      
      protected var var_2096:int;
      
      protected var var_877:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2388 = param5;
         this.var_2854 = param6;
         this.var_2855 = param7;
         this.var_2497 = param8;
         this.var_2081 = param9;
         this.var_1559 = param10;
         this.var_2867 = param11;
         this.var_2383 = param12;
         this.var_2386 = param13;
         this.var_2389 = param14;
         this.var_1886 = param15;
         this.var_2096 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2081;
      }
      
      public function get extra() : Number
      {
         return this.var_1559;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2855;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2854;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2388;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2497;
      }
      
      public function get expires() : int
      {
         return this.var_2867;
      }
      
      public function get creationDay() : int
      {
         return this.var_2383;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2386;
      }
      
      public function get creationYear() : int
      {
         return this.var_2389;
      }
      
      public function get slotId() : String
      {
         return this.var_1886;
      }
      
      public function get songId() : int
      {
         return this.var_2096;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_877 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_877;
      }
   }
}
