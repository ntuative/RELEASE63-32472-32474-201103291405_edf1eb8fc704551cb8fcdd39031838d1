package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1655:String;
      
      private var var_1654:int;
      
      private var var_2254:Boolean;
      
      private var var_2255:Boolean;
      
      private var var_2252:int;
      
      private var var_2253:int;
      
      private var var_2256:int;
      
      private var var_2259:int;
      
      private var var_2257:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1655 = param1.readString();
         this.var_1654 = param1.readInteger();
         this.var_2254 = param1.readBoolean();
         this.var_2255 = param1.readBoolean();
         this.var_2252 = param1.readInteger();
         this.var_2253 = param1.readInteger();
         this.var_2256 = param1.readInteger();
         this.var_2259 = param1.readInteger();
         this.var_2257 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1655;
      }
      
      public function get price() : int
      {
         return this.var_1654;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2254;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2255;
      }
      
      public function get periods() : int
      {
         return this.var_2252;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2253;
      }
      
      public function get year() : int
      {
         return this.var_2256;
      }
      
      public function get month() : int
      {
         return this.var_2259;
      }
      
      public function get day() : int
      {
         return this.var_2257;
      }
   }
}
