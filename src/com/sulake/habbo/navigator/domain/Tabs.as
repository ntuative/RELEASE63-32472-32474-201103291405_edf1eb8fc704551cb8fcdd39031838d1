package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_359:int = 1;
      
      public static const const_265:int = 2;
      
      public static const const_334:int = 3;
      
      public static const const_395:int = 4;
      
      public static const const_270:int = 5;
      
      public static const const_402:int = 1;
      
      public static const const_920:int = 2;
      
      public static const const_747:int = 3;
      
      public static const const_780:int = 4;
      
      public static const const_260:int = 5;
      
      public static const const_842:int = 6;
      
      public static const const_676:int = 7;
      
      public static const const_249:int = 8;
      
      public static const const_369:int = 9;
      
      public static const const_1859:int = 10;
      
      public static const const_863:int = 11;
      
      public static const const_437:int = 12;
       
      
      private var var_432:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_432 = new Array();
         this.var_432.push(new Tab(this._navigator,const_359,const_437,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_541));
         this.var_432.push(new Tab(this._navigator,const_265,const_402,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_541));
         this.var_432.push(new Tab(this._navigator,const_395,const_863,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1258));
         this.var_432.push(new Tab(this._navigator,const_334,const_260,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_541));
         this.var_432.push(new Tab(this._navigator,const_270,const_249,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_800));
         this.setSelectedTab(const_359);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_395;
      }
      
      public function get tabs() : Array
      {
         return this.var_432;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_432)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_432)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_432)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
