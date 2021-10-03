package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1715:int;
      
      private var _currentPosition:int;
      
      private var var_1718:int;
      
      private var var_1716:int;
      
      private var var_1717:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1715;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1718;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1716;
      }
      
      public function get syncCount() : int
      {
         return this.var_1717;
      }
      
      public function flush() : Boolean
      {
         this.var_1715 = -1;
         this._currentPosition = -1;
         this.var_1718 = -1;
         this.var_1716 = -1;
         this.var_1717 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1715 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1718 = param1.readInteger();
         this.var_1716 = param1.readInteger();
         this.var_1717 = param1.readInteger();
         return true;
      }
   }
}
