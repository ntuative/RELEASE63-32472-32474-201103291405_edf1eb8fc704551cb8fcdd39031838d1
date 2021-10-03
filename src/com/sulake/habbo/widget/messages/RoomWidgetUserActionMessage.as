package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_818:String = "RWUAM_WHISPER_USER";
      
      public static const const_649:String = "RWUAM_IGNORE_USER";
      
      public static const const_663:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_535:String = "RWUAM_KICK_USER";
      
      public static const const_741:String = "RWUAM_BAN_USER";
      
      public static const const_696:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_645:String = "RWUAM_RESPECT_USER";
      
      public static const const_703:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_817:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_825:String = "RWUAM_START_TRADING";
      
      public static const const_830:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_555:String = "RWUAM_KICK_BOT";
      
      public static const const_664:String = "RWUAM_REPORT";
      
      public static const const_510:String = "RWUAM_PICKUP_PET";
      
      public static const const_1662:String = "RWUAM_TRAIN_PET";
      
      public static const const_527:String = " RWUAM_RESPECT_PET";
      
      public static const const_363:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_689:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
