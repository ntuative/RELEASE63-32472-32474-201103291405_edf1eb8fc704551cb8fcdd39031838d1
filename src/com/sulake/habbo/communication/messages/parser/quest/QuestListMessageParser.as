package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestListMessageParser implements IMessageParser
   {
       
      
      private var var_1868:String;
      
      private var _activityPointType:int;
      
      private var var_306:Array;
      
      private var var_2703:Boolean;
      
      public function QuestListMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var _loc1_:* = null;
         this.var_1868 = "";
         this._activityPointType = 2;
         if(this.var_306)
         {
            for each(_loc1_ in this.var_306)
            {
               _loc1_.dispose();
            }
         }
         this.var_306 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1868 = param1.readString();
         this._activityPointType = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_306.push(new QuestMessageData(param1));
            _loc3_++;
         }
         this.var_2703 = param1.readBoolean();
         return true;
      }
      
      public function get quests() : Array
      {
         return this.var_306;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1868;
      }
      
      public function get activityPointType() : int
      {
         return this._activityPointType;
      }
      
      public function get isPushMessage() : Boolean
      {
         return this.var_2703;
      }
   }
}
