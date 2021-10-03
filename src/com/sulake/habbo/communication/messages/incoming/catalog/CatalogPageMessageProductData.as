package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_80:String = "i";
      
      public static const const_82:String = "s";
      
      public static const const_184:String = "e";
       
      
      private var var_1844:String;
      
      private var var_2788:int;
      
      private var var_1457:String;
      
      private var var_1456:int;
      
      private var var_1843:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1844 = param1.readString();
         this.var_2788 = param1.readInteger();
         this.var_1457 = param1.readString();
         this.var_1456 = param1.readInteger();
         this.var_1843 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1844;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2788;
      }
      
      public function get extraParam() : String
      {
         return this.var_1457;
      }
      
      public function get productCount() : int
      {
         return this.var_1456;
      }
      
      public function get expiration() : int
      {
         return this.var_1843;
      }
   }
}
