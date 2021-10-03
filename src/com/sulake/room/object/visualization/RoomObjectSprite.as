package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1099:int = 0;
       
      
      private var var_414:BitmapData = null;
      
      private var var_1831:String = "";
      
      private var var_319:Boolean = true;
      
      private var var_2242:String = "";
      
      private var var_2120:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2243:String = "normal";
      
      private var var_1467:Boolean = false;
      
      private var var_1468:Boolean = false;
      
      private var _offset:Point;
      
      private var var_268:int = 0;
      
      private var _height:int = 0;
      
      private var var_1229:Number = 0;
      
      private var var_2246:Boolean = false;
      
      private var var_2245:Boolean = true;
      
      private var var_2107:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var _instanceId:int = 0;
      
      private var var_2244:Array = null;
      
      public function RoomObjectSprite()
      {
         this._offset = new Point(0,0);
         super();
         this._instanceId = var_1099++;
      }
      
      public function dispose() : void
      {
         this.var_414 = null;
         this.var_268 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_414;
      }
      
      public function get assetName() : String
      {
         return this.var_1831;
      }
      
      public function get visible() : Boolean
      {
         return this.var_319;
      }
      
      public function get tag() : String
      {
         return this.var_2242;
      }
      
      public function get alpha() : int
      {
         return this.var_2120;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2243;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1468;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1467;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_268;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1229;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2246;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2245;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2107;
      }
      
      public function get instanceId() : int
      {
         return this._instanceId;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2244;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_268 = param1.width;
            this._height = param1.height;
         }
         this.var_414 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_1831 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_319 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2242 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2120 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2243 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2244 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1467 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1468 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1229 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2246 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2245 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2107 = param1;
         ++this._updateID;
      }
   }
}
