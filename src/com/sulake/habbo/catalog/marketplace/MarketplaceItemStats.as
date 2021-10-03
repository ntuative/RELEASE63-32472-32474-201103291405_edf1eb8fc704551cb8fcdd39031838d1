package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2295:int;
      
      private var var_2296:int;
      
      private var var_2299:int;
      
      private var _dayOffsets:Array;
      
      private var var_1677:Array;
      
      private var var_1678:Array;
      
      private var var_2298:int;
      
      private var var_2297:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2295;
      }
      
      public function get offerCount() : int
      {
         return this.var_2296;
      }
      
      public function get historyLength() : int
      {
         return this.var_2299;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1677;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1678;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2298;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2297;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2295 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2296 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2299 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1677 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1678 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2298 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2297 = param1;
      }
   }
}
