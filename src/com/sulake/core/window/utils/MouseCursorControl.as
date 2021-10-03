package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_32;
      
      private static var var_141:Stage;
      
      private static var var_319:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_785:Boolean = true;
      
      private static var var_120:DisplayObject;
      
      private static var var_1463:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_141 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_120)
            {
               var_141.removeChild(var_120);
               var_141.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_141.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_141.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_141.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_785 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_319;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_319 = param1;
         if(var_319)
         {
            if(var_120)
            {
               var_120.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_120)
         {
            var_120.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_785)
         {
            _loc1_ = var_1463[_type];
            if(_loc1_)
            {
               if(var_120)
               {
                  var_141.removeChild(var_120);
               }
               else
               {
                  var_141.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_141.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_141.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_141.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_120 = _loc1_;
               var_141.addChild(var_120);
            }
            else
            {
               if(var_120)
               {
                  var_141.removeChild(var_120);
                  var_141.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_141.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_141.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_141.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_120 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_32:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_305:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_1572:
                  case MouseCursorType.const_178:
                  case MouseCursorType.const_1488:
                  case MouseCursorType.const_1719:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_785 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1463[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_120)
         {
            var_120.x = param1.stageX - 2;
            var_120.y = param1.stageY;
            if(_type == MouseCursorType.const_32)
            {
               var_319 = false;
               Mouse.show();
            }
            else
            {
               var_319 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_120 && _type != MouseCursorType.const_32)
         {
            Mouse.hide();
            var_319 = false;
         }
      }
   }
}
