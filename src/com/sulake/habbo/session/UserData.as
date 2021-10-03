package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_927:String = "";
      
      private var var_643:String = "";
      
      private var var_2661:String = "";
      
      private var var_2307:int;
      
      private var var_2658:int = 0;
      
      private var var_2662:String = "";
      
      private var var_2659:int = 0;
      
      private var var_2660:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2307;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2307 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_927;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_927 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_643 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2661;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2661 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2658;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2658 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2662;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2662 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2659;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2659 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2660;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2660 = param1;
      }
   }
}
