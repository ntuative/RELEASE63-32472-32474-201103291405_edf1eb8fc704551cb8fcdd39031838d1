package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2267:int;
      
      private var var_1618:String;
      
      private var var_2183:String;
      
      private var var_2787:Boolean;
      
      private var var_2785:Boolean;
      
      private var var_2786:int;
      
      private var var_2182:String;
      
      private var var_2784:String;
      
      private var var_1620:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2267 = param1.readInteger();
         this.var_1618 = param1.readString();
         this.var_2183 = param1.readString();
         this.var_2787 = param1.readBoolean();
         this.var_2785 = param1.readBoolean();
         param1.readString();
         this.var_2786 = param1.readInteger();
         this.var_2182 = param1.readString();
         this.var_2784 = param1.readString();
         this.var_1620 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2267;
      }
      
      public function get avatarName() : String
      {
         return this.var_1618;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2183;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2787;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2785;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2786;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2182;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2784;
      }
      
      public function get realName() : String
      {
         return this.var_1620;
      }
   }
}
