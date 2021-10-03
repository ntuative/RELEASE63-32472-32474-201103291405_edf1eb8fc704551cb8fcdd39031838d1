package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_951:int = 3;
       
      
      private var var_2236:int = -1;
      
      private var var_2235:int = -2;
      
      private var var_347:Vector3d = null;
      
      private var var_415:Vector3d = null;
      
      private var var_1648:Vector3d;
      
      private var var_2233:Boolean = false;
      
      private var _limitedLocY:Boolean = false;
      
      private var var_2237:Boolean = false;
      
      private var var_2239:Boolean = false;
      
      private var var_2231:int = 0;
      
      private var var_2238:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2232:int = 0;
      
      private var var_2234:int = 0;
      
      private var var_2011:int = -1;
      
      private var var_1351:int = 0;
      
      public function RoomCamera()
      {
         this.var_1648 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_415;
      }
      
      public function get method_4() : int
      {
         return this.var_2236;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2235;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1648;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2233;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this._limitedLocY;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2237;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2239;
      }
      
      public function get screenWd() : int
      {
         return this.var_2231;
      }
      
      public function get screenHt() : int
      {
         return this.var_2238;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2232;
      }
      
      public function get roomHt() : int
      {
         return this.var_2234;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_2011;
      }
      
      public function set method_4(param1:int) : void
      {
         this.var_2236 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1648.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2235 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2233 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this._limitedLocY = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2237 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2239 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2231 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2238 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         this._scale = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2232 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2234 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_2011 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_347 == null)
         {
            this.var_347 = new Vector3d();
         }
         if(this.var_347.x != param1.x || this.var_347.y != param1.y || this.var_347.z != param1.z)
         {
            this.var_347.assign(param1);
            this.var_1351 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_347 = null;
         this.var_415 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_415 != null)
         {
            return;
         }
         this.var_415 = new Vector3d();
         this.var_415.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_347 != null && this.var_415 != null)
         {
            ++this.var_1351;
            _loc4_ = Vector3d.dif(this.var_347,this.var_415);
            if(_loc4_.length <= param2)
            {
               this.var_415 = this.var_347;
               this.var_347 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_951 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1351 <= const_951)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_415 = Vector3d.sum(this.var_415,_loc4_);
            }
         }
      }
   }
}
