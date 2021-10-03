package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1318:IHabboTracking;
      
      private var var_1609:Boolean = false;
      
      private var var_2146:int = 0;
      
      private var var_1589:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1318 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1318 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1609 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2146 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1609)
         {
            return;
         }
         ++this.var_1589;
         if(this.var_1589 <= this.var_2146)
         {
            this.var_1318.track("toolbar",param1);
         }
      }
   }
}
