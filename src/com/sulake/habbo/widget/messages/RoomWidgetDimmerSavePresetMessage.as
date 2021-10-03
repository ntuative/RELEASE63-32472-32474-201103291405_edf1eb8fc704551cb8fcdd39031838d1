package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_856:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2506:int;
      
      private var var_2509:int;
      
      private var _color:uint;
      
      private var var_1096:int;
      
      private var var_2688:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_856);
         this.var_2506 = param1;
         this.var_2509 = param2;
         this._color = param3;
         this.var_1096 = param4;
         this.var_2688 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2506;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2509;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1096;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2688;
      }
   }
}
