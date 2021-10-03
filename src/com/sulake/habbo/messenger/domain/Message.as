package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_691:int = 1;
      
      public static const const_868:int = 2;
      
      public static const const_793:int = 3;
      
      public static const const_1246:int = 4;
      
      public static const const_930:int = 5;
      
      public static const const_1042:int = 6;
       
      
      private var _type:int;
      
      private var var_1195:int;
      
      private var var_2447:String;
      
      private var var_2446:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1195 = param2;
         this.var_2447 = param3;
         this.var_2446 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2447;
      }
      
      public function get time() : String
      {
         return this.var_2446;
      }
      
      public function get senderId() : int
      {
         return this.var_1195;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
