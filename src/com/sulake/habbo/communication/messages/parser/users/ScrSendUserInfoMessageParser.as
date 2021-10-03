package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1819:int = 1;
      
      public static const const_1713:int = 2;
       
      
      private var var_905:String;
      
      private var var_2469:int;
      
      private var var_2464:int;
      
      private var var_2470:int;
      
      private var var_2471:int;
      
      private var var_2468:Boolean;
      
      private var var_2474:Boolean;
      
      private var var_2473:int;
      
      private var var_2467:int;
      
      private var var_2466:Boolean;
      
      private var var_2472:int;
      
      private var var_2465:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_905 = param1.readString();
         this.var_2469 = param1.readInteger();
         this.var_2464 = param1.readInteger();
         this.var_2470 = param1.readInteger();
         this.var_2471 = param1.readInteger();
         this.var_2468 = param1.readBoolean();
         this.var_2474 = param1.readBoolean();
         this.var_2473 = param1.readInteger();
         this.var_2467 = param1.readInteger();
         this.var_2466 = param1.readBoolean();
         this.var_2472 = param1.readInteger();
         this.var_2465 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_905;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2469;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2464;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2470;
      }
      
      public function get responseType() : int
      {
         return this.var_2471;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2468;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2474;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2473;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2467;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2466;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2472;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2465;
      }
   }
}
