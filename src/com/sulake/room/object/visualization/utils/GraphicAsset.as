package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_1831:String;
      
      private var var_2595:String;
      
      private var var_414:BitmapDataAsset;
      
      private var var_1467:Boolean;
      
      private var var_1468:Boolean;
      
      private var var_2594:Boolean;
      
      private var _offsetX:int;
      
      private var var_1206:int;
      
      private var var_268:int;
      
      private var _height:int;
      
      private var var_775:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_1831 = param1;
         this.var_2595 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_414 = _loc9_;
            this.var_775 = false;
         }
         else
         {
            this.var_414 = null;
            this.var_775 = true;
         }
         this.var_1467 = param4;
         this.var_1468 = param5;
         this._offsetX = param6;
         this.var_1206 = param7;
         this.var_2594 = param8;
      }
      
      public function dispose() : void
      {
         this.var_414 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_775 && this.var_414 != null)
         {
            _loc1_ = this.var_414.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_268 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_775 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1468;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1467;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_268;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_1831;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2595;
      }
      
      public function get asset() : IAsset
      {
         return this.var_414;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2594;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1467)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1468)
         {
            return this.var_1206;
         }
         return -(this.height + this.var_1206);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1206;
      }
   }
}
