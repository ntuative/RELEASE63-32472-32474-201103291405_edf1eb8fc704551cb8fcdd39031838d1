package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_995:int;
      
      private var var_707:Boolean;
      
      private var var_1956:Boolean;
      
      private var var_643:String;
      
      private var var_1398:int;
      
      private var var_1870:String;
      
      private var var_1619:String;
      
      private var var_1620:String;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1620 = param3;
         this.var_1870 = param4;
         this.var_995 = param5;
         this.var_707 = param6;
         this.var_1956 = param7;
         this.var_643 = param8;
         this.var_1398 = param9;
         this.var_1619 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_995;
      }
      
      public function get online() : Boolean
      {
         return this.var_707;
      }
      
      public function get allowFollow() : Boolean
      {
         return this.var_1956;
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function get categoryId() : int
      {
         return this.var_1398;
      }
      
      public function get motto() : String
      {
         return this.var_1870;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1619;
      }
      
      public function get realName() : String
      {
         return this.var_1620;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_995 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_707 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this.var_1956 = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_643 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1398 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1870 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1619 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1620 = param1;
      }
   }
}
