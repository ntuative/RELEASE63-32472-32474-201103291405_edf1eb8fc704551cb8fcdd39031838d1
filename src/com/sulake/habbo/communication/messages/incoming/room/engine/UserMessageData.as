package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1035:String = "M";
      
      public static const const_1453:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_384:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_927:String = "";
      
      private var var_643:String = "";
      
      private var var_2661:String = "";
      
      private var var_2307:int;
      
      private var var_2658:int = 0;
      
      private var var_2662:String = "";
      
      private var var_2659:int = 0;
      
      private var var_2660:int = 0;
      
      private var var_2700:String = "";
      
      private var var_191:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_191 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_191)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_191)
         {
            this.var_171 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_172;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_191)
         {
            this.var_172 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_384;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_191)
         {
            this.var_384 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_191)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_191)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_927;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_191)
         {
            this.var_927 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_191)
         {
            this.var_643 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2661;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_191)
         {
            this.var_2661 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2307;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_191)
         {
            this.var_2307 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2658;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_191)
         {
            this.var_2658 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2662;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_191)
         {
            this.var_2662 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2659;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_191)
         {
            this.var_2659 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2660;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_191)
         {
            this.var_2660 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2700;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_191)
         {
            this.var_2700 = param1;
         }
      }
   }
}
