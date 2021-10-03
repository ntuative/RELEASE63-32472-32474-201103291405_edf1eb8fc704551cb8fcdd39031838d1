package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1686:int;
      
      private var var_2804:int;
      
      private var var_758:int;
      
      private var var_491:Number;
      
      private var var_2802:Boolean;
      
      private var var_2803:int;
      
      private var var_2014:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2804 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2803 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2802 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_758;
         if(this.var_758 == 1)
         {
            this.var_491 = param1;
            this.var_1686 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_758);
            this.var_491 = this.var_491 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2802 && param3 - this.var_1686 >= this.var_2804 && this.var_2014 < this.var_2803)
         {
            _loc5_ = 1000 / this.var_491;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_2014;
            this.var_1686 = param3;
            this.var_758 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
