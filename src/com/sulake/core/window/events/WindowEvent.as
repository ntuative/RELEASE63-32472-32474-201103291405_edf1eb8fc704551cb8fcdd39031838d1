package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1449:String = "WE_CREATE";
      
      public static const const_1609:String = "WE_CREATED";
      
      public static const const_1451:String = "WE_DESTROY";
      
      public static const const_316:String = "WE_DESTROYED";
      
      public static const const_1676:String = "WE_OPEN";
      
      public static const const_1592:String = "WE_OPENED";
      
      public static const const_1506:String = "WE_CLOSE";
      
      public static const const_1623:String = "WE_CLOSED";
      
      public static const const_1642:String = "WE_FOCUS";
      
      public static const const_321:String = "WE_FOCUSED";
      
      public static const const_1618:String = "WE_UNFOCUS";
      
      public static const const_1556:String = "WE_UNFOCUSED";
      
      public static const const_1717:String = "WE_ACTIVATE";
      
      public static const const_1507:String = "WE_ACTIVATED";
      
      public static const const_1495:String = "WE_DEACTIVATE";
      
      public static const const_492:String = "WE_DEACTIVATED";
      
      public static const const_591:String = "WE_SELECT";
      
      public static const const_62:String = "WE_SELECTED";
      
      public static const const_749:String = "WE_UNSELECT";
      
      public static const const_736:String = "WE_UNSELECTED";
      
      public static const const_1898:String = "WE_ATTACH";
      
      public static const const_1950:String = "WE_ATTACHED";
      
      public static const const_1830:String = "WE_DETACH";
      
      public static const const_2029:String = "WE_DETACHED";
      
      public static const const_1745:String = "WE_LOCK";
      
      public static const const_1497:String = "WE_LOCKED";
      
      public static const const_1648:String = "WE_UNLOCK";
      
      public static const const_1551:String = "WE_UNLOCKED";
      
      public static const const_756:String = "WE_ENABLE";
      
      public static const const_315:String = "WE_ENABLED";
      
      public static const const_857:String = "WE_DISABLE";
      
      public static const const_255:String = "WE_DISABLED";
      
      public static const const_1515:String = "WE_RELOCATE";
      
      public static const const_350:String = "WE_RELOCATED";
      
      public static const const_1578:String = "WE_RESIZE";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const WINDOW_EVENT_MINIMIZE:String = "WE_MINIMIZE";
      
      public static const const_1598:String = "WE_MINIMIZED";
      
      public static const const_1591:String = "WE_MAXIMIZE";
      
      public static const const_1675:String = "WE_MAXIMIZED";
      
      public static const const_1512:String = "WE_RESTORE";
      
      public static const const_1509:String = "WE_RESTORED";
      
      public static const const_2033:String = "WE_ARRANGE";
      
      public static const const_1933:String = "WE_ARRANGED";
      
      public static const const_108:String = "WE_UPDATE";
      
      public static const const_1938:String = "WE_UPDATED";
      
      public static const const_2024:String = "WE_CHILD_RELOCATE";
      
      public static const const_448:String = "WE_CHILD_RELOCATED";
      
      public static const const_1890:String = "WE_CHILD_RESIZE";
      
      public static const const_288:String = "WE_CHILD_RESIZED";
      
      public static const const_2010:String = "WE_CHILD_REMOVE";
      
      public static const const_589:String = "WE_CHILD_REMOVED";
      
      public static const const_1871:String = "WE_PARENT_RELOCATE";
      
      public static const const_1867:String = "WE_PARENT_RELOCATED";
      
      public static const const_1882:String = "WE_PARENT_RESIZE";
      
      public static const const_1485:String = "WE_PARENT_RESIZED";
      
      public static const const_179:String = "WE_OK";
      
      public static const const_762:String = "WE_CANCEL";
      
      public static const const_103:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_464:String = "WE_SCROLL";
      
      public static const const_173:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_471:IWindow;
      
      protected var var_1573:Boolean;
      
      protected var var_1574:Boolean;
      
      private var var_1053:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow = null, param3:IWindow = null, param4:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_471 = param3;
         this.var_1573 = false;
         this.var_1574 = param4;
         super(param1);
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = false ? POOL.pop() : new WindowEvent(param1);
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_471 = param3;
         _loc5_.var_1574 = param4;
         _loc5_.var_1053 = false;
         return _loc5_;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_471;
      }
      
      override public function get cancelable() : Boolean
      {
         return this.var_1574;
      }
      
      public function recycle() : void
      {
         if(this.var_1053)
         {
            throw new Error("Event already recycled!");
         }
         this._type = null;
         this.var_471 = null;
         this._window = null;
         this.var_1053 = true;
         this.var_1573 = false;
         POOL.push(this);
      }
      
      override public function clone() : Event
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1573 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1573;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","cancelable","window");
      }
   }
}
