package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_643:String;
      
      private var var_927:String;
      
      private var var_2735:String;
      
      private var var_1620:String;
      
      private var var_2739:int;
      
      private var var_2738:String;
      
      private var var_2736:int;
      
      private var var_2737:int;
      
      private var var_2652:int;
      
      private var _respectLeft:int;
      
      private var var_839:int;
      
      private var var_2740:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_643 = param1.readString();
         this.var_927 = param1.readString();
         this.var_2735 = param1.readString();
         this.var_1620 = param1.readString();
         this.var_2739 = param1.readInteger();
         this.var_2738 = param1.readString();
         this.var_2736 = param1.readInteger();
         this.var_2737 = param1.readInteger();
         this.var_2652 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_839 = param1.readInteger();
         this.var_2740 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_643;
      }
      
      public function get sex() : String
      {
         return this.var_927;
      }
      
      public function get customData() : String
      {
         return this.var_2735;
      }
      
      public function get realName() : String
      {
         return this.var_1620;
      }
      
      public function get tickets() : int
      {
         return this.var_2739;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2738;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2736;
      }
      
      public function get directMail() : int
      {
         return this.var_2737;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2652;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_839;
      }
      
      public function get identityId() : int
      {
         return this.var_2740;
      }
   }
}
