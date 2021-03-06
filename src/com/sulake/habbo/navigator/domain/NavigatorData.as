package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1789:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_207:MsgWithRequestId;
      
      private var var_633:RoomEventData;
      
      private var var_2549:Boolean;
      
      private var var_2554:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2267:int;
      
      private var var_262:GuestRoomData;
      
      private var var_959:PublicRoomShortData;
      
      private var var_2547:int;
      
      private var var_2546:Boolean;
      
      private var var_2552:int;
      
      private var var_2553:Boolean;
      
      private var var_1812:int;
      
      private var var_2551:Boolean;
      
      private var var_1434:Array;
      
      private var var_1433:Array;
      
      private var var_2550:int;
      
      private var var_1435:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1186:Boolean;
      
      private var var_2555:int;
      
      private var var_2548:Boolean;
      
      private var var_2545:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1434 = new Array();
         this.var_1433 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_262 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_262 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_959 = null;
         this.var_262 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_959 = param1.publicSpace;
            this.var_633 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_633 != null)
         {
            this.var_633.dispose();
            this.var_633 = null;
         }
         if(this.var_959 != null)
         {
            this.var_959.dispose();
            this.var_959 = null;
         }
         if(this.var_262 != null)
         {
            this.var_262.dispose();
            this.var_262 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_262 != null)
         {
            this.var_262.dispose();
         }
         this.var_262 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_633 != null)
         {
            this.var_633.dispose();
         }
         this.var_633 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_207 != null && this.var_207 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_207 != null && this.var_207 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_207 != null && this.var_207 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_207 = param1;
         this.var_1186 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_207 = param1;
         this.var_1186 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_207 = param1;
         this.var_1186 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_207 == null)
         {
            return;
         }
         this.var_207.dispose();
         this.var_207 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_207 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_207 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_207 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_633;
      }
      
      public function get avatarId() : int
      {
         return this.var_2267;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2549;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2554;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_262;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_959;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2546;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2552;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1812;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2553;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2555;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2547;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2551;
      }
      
      public function get adIndex() : int
      {
         return this.var_2545;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2548;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2267 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2552 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2546 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2549 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2554 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2553 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1812 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2555 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2547 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2551 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2545 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2548 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1434 = param1;
         this.var_1433 = new Array();
         for each(_loc2_ in this.var_1434)
         {
            if(_loc2_.visible)
            {
               this.var_1433.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1434;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1433;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2550 = param1.limit;
         this.var_1435 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1435 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_262.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_262 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_262.flatId;
         return this.var_1812 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1435 >= this.var_2550;
      }
      
      public function startLoading() : void
      {
         this.var_1186 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1186;
      }
   }
}
