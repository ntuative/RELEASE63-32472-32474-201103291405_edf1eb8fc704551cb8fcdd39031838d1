package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_794;
         param1["bitmap"] = const_854;
         param1["border"] = const_809;
         param1["border_notify"] = const_1568;
         param1["button"] = const_568;
         param1["button_thick"] = const_670;
         param1["button_icon"] = const_1619;
         param1["button_group_left"] = const_713;
         param1["button_group_center"] = const_693;
         param1["button_group_right"] = const_918;
         param1["canvas"] = const_883;
         param1["checkbox"] = const_665;
         param1["closebutton"] = const_1259;
         param1["container"] = const_388;
         param1["container_button"] = const_862;
         param1["display_object_wrapper"] = const_686;
         param1["dropmenu"] = const_489;
         param1["dropmenu_item"] = const_499;
         param1["frame"] = const_415;
         param1["frame_notify"] = const_1714;
         param1["header"] = const_899;
         param1["html"] = const_1053;
         param1["icon"] = const_1033;
         param1["itemgrid"] = const_1099;
         param1["itemgrid_horizontal"] = const_506;
         param1["itemgrid_vertical"] = const_833;
         param1["itemlist"] = const_1050;
         param1["itemlist_horizontal"] = const_354;
         param1["itemlist_vertical"] = const_376;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1567;
         param1["menu"] = const_1740;
         param1["menu_item"] = const_1729;
         param1["submenu"] = const_1256;
         param1["minimizebox"] = const_1607;
         param1["notify"] = const_1577;
         param1["null"] = const_816;
         param1["password"] = const_886;
         param1["radiobutton"] = const_773;
         param1["region"] = const_434;
         param1["restorebox"] = const_1668;
         param1["scaler"] = const_654;
         param1["scaler_horizontal"] = const_1493;
         param1["scaler_vertical"] = const_1450;
         param1["scrollbar_horizontal"] = const_453;
         param1["scrollbar_vertical"] = const_896;
         param1["scrollbar_slider_button_up"] = const_1217;
         param1["scrollbar_slider_button_down"] = const_1228;
         param1["scrollbar_slider_button_left"] = const_1057;
         param1["scrollbar_slider_button_right"] = const_1235;
         param1["scrollbar_slider_bar_horizontal"] = const_1195;
         param1["scrollbar_slider_bar_vertical"] = const_1255;
         param1["scrollbar_slider_track_horizontal"] = const_1089;
         param1["scrollbar_slider_track_vertical"] = const_1117;
         param1["scrollable_itemlist"] = const_1702;
         param1["scrollable_itemlist_vertical"] = const_455;
         param1["scrollable_itemlist_horizontal"] = const_1198;
         param1["selector"] = const_767;
         param1["selector_list"] = const_656;
         param1["submenu"] = const_1256;
         param1["tab_button"] = const_446;
         param1["tab_container_button"] = const_1036;
         param1["tab_context"] = const_508;
         param1["tab_content"] = const_1156;
         param1["tab_selector"] = const_888;
         param1["text"] = const_456;
         param1["input"] = const_891;
         param1["toolbar"] = const_1723;
         param1["tooltip"] = const_349;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
