package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1655:String;
      
      private var var_1654:int;
      
      private var var_2254:Boolean;
      
      private var var_2255:Boolean;
      
      private var var_2252:int;
      
      private var var_2253:int;
      
      private var var_421:ICatalogPage;
      
      private var var_2256:int;
      
      private var var_2259:int;
      
      private var var_2257:int;
      
      private var var_2258:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1655 = param2;
         this.var_1654 = param3;
         this.var_2254 = param4;
         this.var_2255 = param5;
         this.var_2252 = param6;
         this.var_2253 = param7;
         this.var_2256 = param8;
         this.var_2259 = param9;
         this.var_2257 = param10;
      }
      
      public function dispose() : void
      {
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_186;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1654;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_421;
      }
      
      public function get priceType() : String
      {
         return Offer.const_704;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1655;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_421 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2258;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2258 = param1;
      }
   }
}
