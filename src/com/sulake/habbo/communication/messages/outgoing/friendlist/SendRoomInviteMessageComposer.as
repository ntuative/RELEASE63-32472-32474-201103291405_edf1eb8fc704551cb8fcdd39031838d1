package com.sulake.habbo.communication.messages.outgoing.friendlist
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class SendRoomInviteMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_971:Array;
      
      private var var_1709:String;
      
      public function SendRoomInviteMessageComposer(param1:String)
      {
         this.var_971 = new Array();
         super();
         this.var_1709 = param1;
      }
      
      public function getMessageArray() : Array
      {
         var _loc1_:Array = new Array();
         _loc1_.push(this.var_971.length);
         var _loc2_:int = 0;
         while(_loc2_ < this.var_971.length)
         {
            _loc1_.push(this.var_971[_loc2_]);
            _loc2_++;
         }
         _loc1_.push(this.var_1709);
         return _loc1_;
      }
      
      public function addInvitedFriend(param1:int) : void
      {
         this.var_971.push(param1);
      }
      
      public function dispose() : void
      {
         this.var_971 = null;
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
   }
}
