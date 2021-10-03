package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1473:Boolean;
      
      private var var_2585:int;
      
      private var var_2034:int;
      
      private var var_2035:int;
      
      private var var_2583:int;
      
      private var var_2584:int;
      
      private var var_2587:int;
      
      private var var_2586:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1473;
      }
      
      public function get commission() : int
      {
         return this.var_2585;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2034;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2035;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2584;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2583;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2587;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2586;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1473 = param1.readBoolean();
         this.var_2585 = param1.readInteger();
         this.var_2034 = param1.readInteger();
         this.var_2035 = param1.readInteger();
         this.var_2584 = param1.readInteger();
         this.var_2583 = param1.readInteger();
         this.var_2587 = param1.readInteger();
         this.var_2586 = param1.readInteger();
         return true;
      }
   }
}
