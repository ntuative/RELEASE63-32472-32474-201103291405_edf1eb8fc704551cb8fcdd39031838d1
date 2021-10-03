package com.sulake.core.runtime.events
{
   import flash.events.ProgressEvent;
   
   public class LibraryProgressEvent extends ProgressEvent
   {
       
      
      private var var_2407:int = 0;
      
      private var var_2538:String = "";
      
      public function LibraryProgressEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:int = 0)
      {
         this.var_2538 = param1;
         this.var_2407 = param4;
         super(ProgressEvent.PROGRESS,false,false,param2,param3);
      }
      
      public function get elapsedTime() : int
      {
         return this.var_2407;
      }
      
      public function get fileName() : String
      {
         return this.var_2538;
      }
   }
}
