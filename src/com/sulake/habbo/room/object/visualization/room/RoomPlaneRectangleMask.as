package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2178:Number = 0.0;
      
      private var var_2175:Number = 0.0;
      
      private var var_2177:Number = 0.0;
      
      private var var_2176:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2178 = param1;
         this.var_2175 = param2;
         this.var_2177 = param3;
         this.var_2176 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2178;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2175;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2177;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2176;
      }
   }
}
