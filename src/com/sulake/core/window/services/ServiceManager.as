package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2886:uint;
      
      private var var_149:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_256:IWindowContext;
      
      private var var_1146:IMouseDraggingService;
      
      private var var_1147:IMouseScalingService;
      
      private var var_1148:IMouseListenerService;
      
      private var var_1149:IFocusManagerService;
      
      private var var_1145:IToolTipAgentService;
      
      private var var_1150:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2886 = 0;
         this.var_149 = param2;
         this.var_256 = param1;
         this.var_1146 = new WindowMouseDragger(param2);
         this.var_1147 = new WindowMouseScaler(param2);
         this.var_1148 = new WindowMouseListener(param2);
         this.var_1149 = new FocusManager(param2);
         this.var_1145 = new WindowToolTipAgent(param2);
         this.var_1150 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1146 != null)
         {
            this.var_1146.dispose();
            this.var_1146 = null;
         }
         if(this.var_1147 != null)
         {
            this.var_1147.dispose();
            this.var_1147 = null;
         }
         if(this.var_1148 != null)
         {
            this.var_1148.dispose();
            this.var_1148 = null;
         }
         if(this.var_1149 != null)
         {
            this.var_1149.dispose();
            this.var_1149 = null;
         }
         if(this.var_1145 != null)
         {
            this.var_1145.dispose();
            this.var_1145 = null;
         }
         if(this.var_1150 != null)
         {
            this.var_1150.dispose();
            this.var_1150 = null;
         }
         this.var_149 = null;
         this.var_256 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1146;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1147;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1148;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1149;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1145;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1150;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
