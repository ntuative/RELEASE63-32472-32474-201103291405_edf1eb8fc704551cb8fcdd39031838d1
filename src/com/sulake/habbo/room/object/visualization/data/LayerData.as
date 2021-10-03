package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_702:String = "";
      
      public static const const_380:int = 0;
      
      public static const const_592:int = 255;
      
      public static const const_745:Boolean = false;
      
      public static const const_549:int = 0;
      
      public static const const_479:int = 0;
      
      public static const const_375:int = 0;
      
      public static const const_1039:int = 1;
      
      public static const const_1179:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2242:String = "";
      
      private var var_2020:int = 0;
      
      private var var_2120:int = 255;
      
      private var var_2649:Boolean = false;
      
      private var var_2647:int = 0;
      
      private var var_2648:int = 0;
      
      private var var_2650:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2242 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2242;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2020 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2020;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2120 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2120;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2649 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2649;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2647 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2647;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2648 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2648;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2650 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2650;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
