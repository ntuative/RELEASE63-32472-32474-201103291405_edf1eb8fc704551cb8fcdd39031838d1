package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2774:int;
      
      private var var_2775:int;
      
      private var var_2773:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2774 = param1;
         this.var_2775 = param2;
         this.var_2773 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2774,this.var_2775,this.var_2773];
      }
      
      public function dispose() : void
      {
      }
   }
}
