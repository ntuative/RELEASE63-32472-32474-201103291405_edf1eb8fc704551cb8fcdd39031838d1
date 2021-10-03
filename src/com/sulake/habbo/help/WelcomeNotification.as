package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2781:String;
      
      private var var_2782:String;
      
      private var var_2783:String;
      
      public function WelcomeNotification(param1:String, param2:String, param3:String)
      {
         super();
         this.var_2781 = param1;
         this.var_2782 = param2;
         this.var_2783 = param3;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2781;
      }
      
      public function get titleLocalizationKey() : String
      {
         return this.var_2782;
      }
      
      public function get descriptionLocalizationKey() : String
      {
         return this.var_2783;
      }
   }
}
