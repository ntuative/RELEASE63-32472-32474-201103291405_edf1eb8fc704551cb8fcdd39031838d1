package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1709:String = "WN_CRETAE";
      
      public static const const_1566:String = "WN_CREATED";
      
      public static const const_1096:String = "WN_DESTROY";
      
      public static const const_1073:String = "WN_DESTROYED";
      
      public static const const_1081:String = "WN_OPEN";
      
      public static const const_1140:String = "WN_OPENED";
      
      public static const const_1030:String = "WN_CLOSE";
      
      public static const const_1243:String = "WN_CLOSED";
      
      public static const const_1142:String = "WN_FOCUS";
      
      public static const const_1249:String = "WN_FOCUSED";
      
      public static const const_1214:String = "WN_UNFOCUS";
      
      public static const const_1037:String = "WN_UNFOCUSED";
      
      public static const const_1178:String = "WN_ACTIVATE";
      
      public static const const_348:String = "WN_ACTVATED";
      
      public static const const_1251:String = "WN_DEACTIVATE";
      
      public static const const_1261:String = "WN_DEACTIVATED";
      
      public static const const_562:String = "WN_SELECT";
      
      public static const const_366:String = "WN_SELECTED";
      
      public static const const_824:String = "WN_UNSELECT";
      
      public static const const_735:String = "WN_UNSELECTED";
      
      public static const const_1169:String = "WN_LOCK";
      
      public static const const_1160:String = "WN_LOCKED";
      
      public static const const_1189:String = "WN_UNLOCK";
      
      public static const const_1184:String = "WN_UNLOCKED";
      
      public static const const_1186:String = "WN_ENABLE";
      
      public static const const_754:String = "WN_ENABLED";
      
      public static const const_1158:String = "WN_DISABLE";
      
      public static const const_804:String = "WN_DISABLED";
      
      public static const const_871:String = "WN_RESIZE";
      
      public static const const_208:String = "WN_RESIZED";
      
      public static const const_1122:String = "WN_RELOCATE";
      
      public static const const_579:String = "WN_RELOCATED";
      
      public static const const_1094:String = "WN_MINIMIZE";
      
      public static const const_1232:String = "WN_MINIMIZED";
      
      public static const const_1233:String = "WN_MAXIMIZE";
      
      public static const const_1131:String = "WN_MAXIMIZED";
      
      public static const const_1086:String = "WN_RESTORE";
      
      public static const const_1177:String = "WN_RESTORED";
      
      public static const const_361:String = "WN_CHILD_ADDED";
      
      public static const const_826:String = "WN_CHILD_REMOVED";
      
      public static const const_289:String = "WN_CHILD_RESIZED";
      
      public static const const_282:String = "WN_CHILD_RELOCATED";
      
      public static const WINDOW_NOTIFY_CHILD_ACTIVATED:String = "WN_CHILD_ACTIVATED";
      
      public static const const_546:String = "WN_PARENT_ADDED";
      
      public static const const_1210:String = "WN_PARENT_REMOVED";
      
      public static const const_542:String = "WN_PARENT_RESIZED";
      
      public static const const_1032:String = "WN_PARENT_RELOCATED";
      
      public static const const_902:String = "WN_PARENT_ACTIVATED";
      
      public static const const_573:String = "WN_STATE_UPDATED";
      
      public static const const_545:String = "WN_STYLE_UPDATED";
      
      public static const const_447:String = "WN_PARAM_UPDATED";
      
      public static const UNKNOWN:String = "UNKNOWN";
      
      private static const POOL:Array = [];
       
      
      private var _isRecycled:Boolean;
      
      public function WindowNotifyEvent()
      {
         super("",null,null);
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowNotifyEvent
      {
         var _loc5_:WindowNotifyEvent = false ? POOL.pop() : new WindowNotifyEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_471 = param3;
         _loc5_.var_1574 = param4;
         _loc5_._isRecycled = false;
         return _loc5_;
      }
      
      override public function recycle() : void
      {
         if(this._isRecycled)
         {
            throw new Error("Event already recycled!");
         }
         _type = null;
         var_471 = null;
         _window = null;
         this._isRecycled = true;
         POOL.push(this);
      }
      
      override public function clone() : Event
      {
         return allocate(type,_window,var_471,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
