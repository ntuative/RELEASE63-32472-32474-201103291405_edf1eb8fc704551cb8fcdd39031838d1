package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2565:int;
      
      private var var_2081:String;
      
      private var var_1654:int;
      
      private var var_2295:int;
      
      private var var_2570:int;
      
      private var var_403:int;
      
      private var var_2564:int = -1;
      
      private var var_1824:int;
      
      private var var_45:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2565 = param3;
         this.var_2081 = param4;
         this.var_1654 = param5;
         this.var_403 = param6;
         this.var_2295 = param7;
         this.var_1824 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_45)
         {
            this.var_45.dispose();
            this.var_45 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2565;
      }
      
      public function get stuffData() : String
      {
         return this.var_2081;
      }
      
      public function get price() : int
      {
         return this.var_1654;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2295;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_45 != null)
         {
            this.var_45.dispose();
         }
         this.var_45 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2570 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2570;
      }
      
      public function get status() : int
      {
         return this.var_403;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2564;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2564 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1654 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1824;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1824 = param1;
      }
   }
}
