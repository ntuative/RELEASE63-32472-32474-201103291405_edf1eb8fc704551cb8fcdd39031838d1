package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetPackageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_582:String = "RWOPPUE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_471:String = "RWOPPUE_OPEN_PET_PACKAGE_RESULT";
      
      public static const const_393:String = "RWOPPUE_OPEN_PET_PACKAGE_UPDATE_PET_IMAGE";
       
      
      private var var_346:int = -1;
      
      private var var_45:BitmapData = null;
      
      private var var_1867:int = 0;
      
      private var var_1675:String = null;
      
      public function RoomWidgetPetPackageUpdateEvent(param1:String, param2:int, param3:BitmapData, param4:int, param5:String, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_346 = param2;
         this.var_45 = param3;
         this.var_1867 = param4;
         this.var_1675 = param5;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1867;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1675;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function get objectId() : int
      {
         return this.var_346;
      }
   }
}
