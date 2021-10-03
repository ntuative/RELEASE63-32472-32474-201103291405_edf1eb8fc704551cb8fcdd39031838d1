package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_155:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_134:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1162:String;
      
      private var var_1485:Array;
      
      private var var_1204:Array;
      
      private var var_1927:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1162 = param2;
         this.var_1485 = param3;
         this.var_1204 = param4;
         if(this.var_1204 == null)
         {
            this.var_1204 = [];
         }
         this.var_1927 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1162;
      }
      
      public function get choices() : Array
      {
         return this.var_1485.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1204.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1927;
      }
   }
}
