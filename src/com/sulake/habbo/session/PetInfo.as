package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1723:int;
      
      private var var_1522:int;
      
      private var var_2426:int;
      
      private var var_2422:int;
      
      private var var_2421:int;
      
      private var _energy:int;
      
      private var var_2420:int;
      
      private var _nutrition:int;
      
      private var var_2423:int;
      
      private var var_2425:int;
      
      private var _ownerName:String;
      
      private var var_2424:int;
      
      private var var_527:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1723;
      }
      
      public function get level() : int
      {
         return this.var_1522;
      }
      
      public function get levelMax() : int
      {
         return this.var_2426;
      }
      
      public function get experience() : int
      {
         return this.var_2422;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2421;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2420;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2423;
      }
      
      public function get ownerId() : int
      {
         return this.var_2425;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2424;
      }
      
      public function get age() : int
      {
         return this.var_527;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1723 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1522 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2426 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2422 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2421 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2420 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2423 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2425 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2424 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_527 = param1;
      }
   }
}
