package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1481:String = "pricing_model_unknown";
      
      public static const const_521:String = "pricing_model_single";
      
      public static const const_504:String = "pricing_model_multi";
      
      public static const const_440:String = "pricing_model_bundle";
      
      public static const const_1496:String = "price_type_none";
      
      public static const const_704:String = "price_type_credits";
      
      public static const const_1046:String = "price_type_activitypoints";
      
      public static const const_1083:String = "price_type_credits_and_activitypoints";
       
      
      private var var_836:String;
      
      private var var_1283:String;
      
      private var _offerId:int;
      
      private var var_2022:String;
      
      private var var_1285:int;
      
      private var var_1284:int;
      
      private var _activityPointType:int;
      
      private var var_421:ICatalogPage;
      
      private var var_837:IProductContainer;
      
      private var var_2824:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_2022 = param1.localizationId;
         this.var_1285 = param1.priceInCredits;
         this.var_1284 = param1.priceInActivityPoints;
         this._activityPointType = param1.activityPointType;
         this.var_421 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_421;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_2022;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1285;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1284;
      }
      
      public function get activityPointType() : int
      {
         return this._activityPointType;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_837;
      }
      
      public function get pricingModel() : String
      {
         return this.var_836;
      }
      
      public function get priceType() : String
      {
         return this.var_1283;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2824;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2824 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_2022 = "";
         this.var_1285 = 0;
         this.var_1284 = 0;
         this._activityPointType = 0;
         this.var_421 = null;
         if(this.var_837 != null)
         {
            this.var_837.dispose();
            this.var_837 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_836)
         {
            case const_521:
               this.var_837 = new SingleProductContainer(this,param1);
               break;
            case const_504:
               this.var_837 = new MultiProductContainer(this,param1);
               break;
            case const_440:
               this.var_837 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_836);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_836 = const_521;
            }
            else
            {
               this.var_836 = const_504;
            }
         }
         else if(param1.length > 1)
         {
            this.var_836 = const_440;
         }
         else
         {
            this.var_836 = const_1481;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1285 > 0 && this.var_1284 > 0)
         {
            this.var_1283 = const_1083;
         }
         else if(this.var_1285 > 0)
         {
            this.var_1283 = const_704;
         }
         else if(this.var_1284 > 0)
         {
            this.var_1283 = const_1046;
         }
         else
         {
            this.var_1283 = const_1496;
         }
      }
   }
}
