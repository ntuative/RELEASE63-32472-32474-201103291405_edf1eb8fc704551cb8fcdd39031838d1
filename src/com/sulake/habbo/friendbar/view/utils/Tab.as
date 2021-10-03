package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.friendbar.data.IHabboFriendBarData;
   import com.sulake.habbo.friendbar.view.IHabboFriendBarView;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class Tab implements ITab
   {
      
      public static var name_5:int = 127;
      
      public static var name_1:int = 40;
      
      public static var var_1044:IHabboFriendBarData;
      
      public static var var_1045:IHabboFriendBarView;
      
      public static var var_845:IAssetLibrary;
      
      public static var var_1297:IHabboWindowManager;
      
      public static var var_2061:TextCropper;
       
      
      protected var _window:IWindowContainer;
      
      protected var var_1053:Boolean;
      
      private var _selected:Boolean;
      
      private var _disposed:Boolean;
      
      public function Tab()
      {
         super();
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
      
      public function get selected() : Boolean
      {
         return this._selected;
      }
      
      public function get recycled() : Boolean
      {
         return this.var_1053;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function select() : void
      {
         this._selected = true;
      }
      
      public function deselect() : void
      {
         this._selected = false;
      }
      
      public function recycle() : void
      {
         this.var_1053 = true;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this._window)
            {
               this._window.dispose();
               this._window = null;
            }
            this._disposed = true;
         }
      }
   }
}
