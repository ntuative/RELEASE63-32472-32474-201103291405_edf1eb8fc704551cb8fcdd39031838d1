package com.sulake.habbo.avatar.structure.figure
{
   import flash.geom.ColorTransform;
   
   public class PartColor implements IPartColor
   {
       
      
      private var _id:int;
      
      private var _index:int;
      
      private var var_2167:int;
      
      private var var_2180:Boolean = false;
      
      private var _rgb:uint;
      
      private var var_1615:uint;
      
      private var var_1613:uint;
      
      private var _b:uint;
      
      private var var_1617:Number;
      
      private var var_1616:Number;
      
      private var var_1614:Number;
      
      private var var_949:ColorTransform;
      
      public function PartColor(param1:XML)
      {
         super();
         this._id = parseInt(param1.@id);
         this._index = parseInt(param1.@index);
         this.var_2167 = parseInt(param1.@club);
         this.var_2180 = Boolean(parseInt(param1.@selectable));
         var _loc2_:String = param1.text();
         this._rgb = parseInt(_loc2_,16);
         this.var_1615 = this._rgb >> 16 & 255;
         this.var_1613 = this._rgb >> 8 & 255;
         this._b = this._rgb >> 0 & 255;
         this.var_1617 = this.var_1615 / 255 * 1;
         this.var_1616 = this.var_1613 / 255 * 1;
         this.var_1614 = this._b / 255 * 1;
         this.var_949 = new ColorTransform(this.var_1617,this.var_1616,this.var_1614);
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.var_949;
      }
      
      public function get redMultiplier() : Number
      {
         return this.var_1617;
      }
      
      public function get greenMultiplier() : Number
      {
         return this.var_1616;
      }
      
      public function get blueMultiplier() : Number
      {
         return this.var_1614;
      }
      
      public function get rgb() : uint
      {
         return this._rgb;
      }
      
      public function get r() : uint
      {
         return this.var_1615;
      }
      
      public function get g() : uint
      {
         return this.var_1613;
      }
      
      public function get b() : uint
      {
         return this._b;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2167;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2180;
      }
   }
}
