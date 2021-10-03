package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2835:String;
      
      private var var_2031:String;
      
      private var var_2834:String;
      
      private var var_2032:Boolean;
      
      private var var_2033:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2835 = String(param1["set-type"]);
         this.var_2031 = String(param1["flipped-set-type"]);
         this.var_2834 = String(param1["remove-set-type"]);
         this.var_2032 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_2033 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_2033;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_2033 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2835;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_2031;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2834;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_2032;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_2032 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_2031 = param1;
      }
   }
}
