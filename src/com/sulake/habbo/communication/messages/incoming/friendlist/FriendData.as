package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_995:int;
      
      private var var_707:Boolean;
      
      private var var_1871:Boolean;
      
      private var var_643:String;
      
      private var var_1398:int;
      
      private var var_1870:String;
      
      private var var_1619:String;
      
      private var var_1620:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_995 = param1.readInteger();
         this.var_707 = param1.readBoolean();
         this.var_1871 = param1.readBoolean();
         this.var_643 = param1.readString();
         this.var_1398 = param1.readInteger();
         this.var_1870 = param1.readString();
         this.var_1619 = param1.readString();
         this.var_1620 = param1.readString();
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
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1871;
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
   }
}
