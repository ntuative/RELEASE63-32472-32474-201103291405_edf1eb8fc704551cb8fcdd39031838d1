package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_195;
         param1["bound_to_parent_rect"] = const_98;
         param1["child_window"] = const_1137;
         param1["embedded_controller"] = const_1163;
         param1["resize_to_accommodate_children"] = const_64;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_879;
         param1["mouse_dragging_target"] = const_228;
         param1["mouse_dragging_trigger"] = const_408;
         param1["mouse_scaling_target"] = const_287;
         param1["mouse_scaling_trigger"] = const_561;
         param1["horizontal_mouse_scaling_trigger"] = const_233;
         param1["vertical_mouse_scaling_trigger"] = const_261;
         param1["observe_parent_input_events"] = const_1100;
         param1["optimize_region_to_layout_size"] = const_598;
         param1["parent_window"] = const_1104;
         param1["relative_horizontal_scale_center"] = const_190;
         param1["relative_horizontal_scale_fixed"] = const_153;
         param1["relative_horizontal_scale_move"] = const_389;
         param1["relative_horizontal_scale_strech"] = const_377;
         param1["relative_scale_center"] = const_1201;
         param1["relative_scale_fixed"] = const_938;
         param1["relative_scale_move"] = const_1234;
         param1["relative_scale_strech"] = const_1157;
         param1["relative_vertical_scale_center"] = const_177;
         param1["relative_vertical_scale_fixed"] = const_131;
         param1["relative_vertical_scale_move"] = const_221;
         param1["relative_vertical_scale_strech"] = const_324;
         param1["on_resize_align_left"] = const_725;
         param1["on_resize_align_right"] = const_587;
         param1["on_resize_align_center"] = const_532;
         param1["on_resize_align_top"] = const_720;
         param1["on_resize_align_bottom"] = const_531;
         param1["on_resize_align_middle"] = const_478;
         param1["on_accommodate_align_left"] = const_1071;
         param1["on_accommodate_align_right"] = const_494;
         param1["on_accommodate_align_center"] = const_722;
         param1["on_accommodate_align_top"] = const_1125;
         param1["on_accommodate_align_bottom"] = const_500;
         param1["on_accommodate_align_middle"] = const_730;
         param1["route_input_events_to_parent"] = const_556;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1044;
         param1["scalable_with_mouse"] = const_1194;
         param1["reflect_horizontal_resize_to_parent"] = const_552;
         param1["reflect_vertical_resize_to_parent"] = const_450;
         param1["reflect_resize_to_parent"] = const_296;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1151;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
