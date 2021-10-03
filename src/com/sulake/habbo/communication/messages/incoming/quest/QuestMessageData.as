package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_403:int;
      
      private var _type:String;
      
      private var var_1904:String;
      
      private var var_1901:int;
      
      private var var_1903:String;
      
      private var var_797:String;
      
      private var var_1902:String;
      
      private var var_2419:String;
      
      private var include:uint;
      
      private var var_2663:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_403 = param1.readInteger();
         this._type = param1.readString();
         this.var_1904 = param1.readString();
         this.var_1901 = param1.readInteger();
         this.var_1903 = param1.readString();
         this.var_797 = param1.readString();
         this.var_2419 = param1.readString();
         this.var_2663 = param1.readInteger();
         var _loc2_:String = "";
         var _loc3_:int = this.var_797.length - 1;
         while(_loc3_ > 0 && this.isNumber(this.var_797.charAt(_loc3_)))
         {
            _loc2_ = this.var_797.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_1902 = this.var_797.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_1902 = this.var_797;
         }
         this.include = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_403 = 0;
         this._type = "";
         this.var_1904 = "";
         this.var_1901 = 0;
         this.var_1903 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_403;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1904;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1901;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_1903;
      }
      
      public function get localizationCode() : String
      {
         return this.var_797;
      }
      
      public function get sortCode() : uint
      {
         return this.include;
      }
      
      public function get sortOrder() : uint
      {
         return this.var_2663;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_1902;
      }
      
      public function get questBadgeAchievementTypeId() : String
      {
         return this.var_2419;
      }
   }
}
