package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_643:String;
      
      private var var_927:String;
      
      private var var_1744:String;
      
      private var var_2307:int;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function get sex() : String
      {
         return this.var_927;
      }
      
      public function get customInfo() : String
      {
         return this.var_1744;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2307;
      }
      
      public function flush() : Boolean
      {
         this._id = 0;
         this.var_643 = "";
         this.var_927 = "";
         this.var_1744 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_643 = param1.readString();
         this.var_927 = param1.readString();
         this.var_1744 = param1.readString();
         this.var_2307 = param1.readInteger();
         if(this.var_927)
         {
            this.var_927 = this.var_927.toUpperCase();
         }
         return true;
      }
   }
}
