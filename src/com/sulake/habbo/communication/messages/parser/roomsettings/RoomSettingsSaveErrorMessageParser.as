package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1990:int = 1;
      
      public static const const_1929:int = 2;
      
      public static const const_1970:int = 3;
      
      public static const const_1889:int = 4;
      
      public static const const_1579:int = 5;
      
      public static const const_1947:int = 6;
      
      public static const const_1629:int = 7;
      
      public static const const_1737:int = 8;
      
      public static const const_1924:int = 9;
      
      public static const const_1585:int = 10;
      
      public static const const_1633:int = 11;
      
      public static const const_1521:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1702:int;
      
      private var var_1518:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1702 = param1.readInteger();
         this.var_1518 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1702;
      }
      
      public function get info() : String
      {
         return this.var_1518;
      }
   }
}
