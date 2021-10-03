package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_460:String = "RSVFS_STATUS";
      
      public static const const_505:String = "RSVFS_RECEIVED";
       
      
      private var var_188:String;
      
      private var var_346:int;
      
      private var var_403:int = -1;
      
      private var _shareId:String;
      
      private var var_2504:String;
      
      private var var_2638:Boolean;
      
      private var var_1472:int = 0;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_403 = this.status;
         this._shareId = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this.var_346;
      }
      
      public function get status() : int
      {
         return this.var_403;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2504;
      }
      
      public function get method_2() : Boolean
      {
         return this.var_2638;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1472;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_346 = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_403 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this._shareId = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2504 = param1;
      }
      
      public function set method_2(param1:Boolean) : void
      {
         this.var_2638 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1472 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_188;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_188 = param1;
      }
   }
}
