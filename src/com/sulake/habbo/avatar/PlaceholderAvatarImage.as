package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_810:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_752)
         {
            _structure = null;
            _assets = null;
            var_250 = null;
            var_287 = null;
            var_643 = null;
            var_564 = null;
            var_333 = null;
            if(!var_1313 && var_45)
            {
               var_45.dispose();
            }
            var_45 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_705 = null;
            var_752 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_810[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_810[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_367:
               switch(_loc3_)
               {
                  case AvatarAction.const_782:
                  case AvatarAction.const_488:
                  case AvatarAction.const_384:
                  case AvatarAction.const_928:
                  case AvatarAction.const_374:
                  case AvatarAction.const_740:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_322:
            case AvatarAction.const_858:
            case AvatarAction.const_241:
            case AvatarAction.const_799:
            case AvatarAction.const_699:
            case AvatarAction.const_936:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
