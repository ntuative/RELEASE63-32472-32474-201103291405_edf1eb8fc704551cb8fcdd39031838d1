package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2407:int = 0;
      
      private var var_1360:String = "";
      
      private var var_1683:String = "";
      
      private var var_2303:String = "";
      
      private var var_2410:String = "";
      
      private var var_1761:int = 0;
      
      private var var_2406:int = 0;
      
      private var var_2409:int = 0;
      
      private var var_1363:int = 0;
      
      private var var_2408:int = 0;
      
      private var var_1362:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2407 = param1;
         this.var_1360 = param2;
         this.var_1683 = param3;
         this.var_2303 = param4;
         this.var_2410 = param5;
         if(param6)
         {
            this.var_1761 = 1;
         }
         else
         {
            this.var_1761 = 0;
         }
         this.var_2406 = param7;
         this.var_2409 = param8;
         this.var_1363 = param9;
         this.var_2408 = param10;
         this.var_1362 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2407,this.var_1360,this.var_1683,this.var_2303,this.var_2410,this.var_1761,this.var_2406,this.var_2409,this.var_1363,this.var_2408,this.var_1362];
      }
   }
}
