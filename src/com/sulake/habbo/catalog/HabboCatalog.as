package com.sulake.habbo.catalog
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalization;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.catalog.club.ClubBuyController;
   import com.sulake.habbo.catalog.club.ClubBuyOfferData;
   import com.sulake.habbo.catalog.club.ClubGiftController;
   import com.sulake.habbo.catalog.enum.HabboCatalogTrackingEvent;
   import com.sulake.habbo.catalog.enum.ProductTypeEnum;
   import com.sulake.habbo.catalog.marketplace.IMarketPlace;
   import com.sulake.habbo.catalog.marketplace.MarketPlaceLogic;
   import com.sulake.habbo.catalog.marketplace.MarketplaceItemStats;
   import com.sulake.habbo.catalog.navigation.CatalogNavigator;
   import com.sulake.habbo.catalog.navigation.ICatalogNavigator;
   import com.sulake.habbo.catalog.purchase.ChargeConfirmationDialog;
   import com.sulake.habbo.catalog.purchase.GiftWrappingConfiguration;
   import com.sulake.habbo.catalog.purchase.PlacedObjectPurchaseData;
   import com.sulake.habbo.catalog.purchase.PurchaseConfirmationDialog;
   import com.sulake.habbo.catalog.purse.IPurse;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.purse.PurseEvent;
   import com.sulake.habbo.catalog.recycler.IRecycler;
   import com.sulake.habbo.catalog.recycler.RecyclerLogic;
   import com.sulake.habbo.catalog.viewer.CatalogViewer;
   import com.sulake.habbo.catalog.viewer.IDragAndDropDoneReceiver;
   import com.sulake.habbo.catalog.viewer.IPageLocalization;
   import com.sulake.habbo.catalog.viewer.IProduct;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.PageLocalization;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetApproveNameResultEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetSellablePetBreedsEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.RentableBotDefinitionWidgetEvent;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogIndexMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPublishedMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.ChargeInfo;
   import com.sulake.habbo.communication.messages.incoming.catalog.ChargeInfoMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.ClubGiftInfoEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftReceiverNotFoundEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.HabboClubOffersMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.IsOfferGiftableMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.NodeData;
   import com.sulake.habbo.communication.messages.incoming.catalog.NotEnoughBalanceMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.PurchaseErrorMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.PurchaseNotAllowedMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.PurchaseOKMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.RentableBotDefinitionsMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.SellablePetBreedsMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.VoucherRedeemErrorMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.catalog.VoucherRedeemOkMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.inventory.purse.CreditBalanceEvent;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketPlaceOffersEvent;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketPlaceOwnOffersEvent;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketplaceBuyOfferResultEvent;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketplaceCancelOfferResultEvent;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketplaceConfigurationEvent;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketplaceItemStatsEvent;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketplaceMakeOfferResult;
   import com.sulake.habbo.communication.messages.incoming.notifications.ActivityPointsMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.notifications.HabboActivityPointNotificationMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.recycler.RecyclerFinishedMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.recycler.RecyclerPrizesMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.recycler.RecyclerStatusMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.session.CloseConnectionMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.users.ApproveNameMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.users.ScrSendUserInfoEvent;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetCatalogIndexComposer;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetCatalogPageComposer;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetClubOffersMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetGiftWrappingConfigurationComposer;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetIsOfferGiftableComposer;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetRentableBotDefinitionsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetSellablePetBreedsComposer;
   import com.sulake.habbo.communication.messages.outgoing.catalog.PurchaseFromCatalogAsGiftComposer;
   import com.sulake.habbo.communication.messages.outgoing.catalog.PurchaseFromCatalogComposer;
   import com.sulake.habbo.communication.messages.outgoing.catalog.RedeemVoucherMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.BuyOfferMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.CancelOfferMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceItemStatsComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetOffersMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetOwnOffersMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.RedeemOfferCreditsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.recycler.GetRecyclerPrizesMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.recycler.GetRecyclerStatusMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.recycler.RecycleItemsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.room.engine.PlaceObjectMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.users.ApproveNameMessageComposer;
   import com.sulake.habbo.communication.messages.parser.catalog.CatalogPageMessageParser;
   import com.sulake.habbo.communication.messages.parser.catalog.ClubGiftInfoParser;
   import com.sulake.habbo.communication.messages.parser.catalog.NotEnoughBalanceMessageParser;
   import com.sulake.habbo.communication.messages.parser.catalog.PurchaseNotAllowedMessageParser;
   import com.sulake.habbo.communication.messages.parser.catalog.RentableBotDefinitionsMessageParser;
   import com.sulake.habbo.communication.messages.parser.catalog.SellablePetBreedsParser;
   import com.sulake.habbo.communication.messages.parser.inventory.purse.CreditBalanceParser;
   import com.sulake.habbo.communication.messages.parser.marketplace.MarketplaceConfigurationParser;
   import com.sulake.habbo.communication.messages.parser.marketplace.MarketplaceItemStatsParser;
   import com.sulake.habbo.communication.messages.parser.marketplace.MarketplaceMakeOfferResultParser;
   import com.sulake.habbo.communication.messages.parser.recycler.RecyclerFinishedMessageParser;
   import com.sulake.habbo.communication.messages.parser.recycler.RecyclerPrizesMessageParser;
   import com.sulake.habbo.communication.messages.parser.recycler.RecyclerStatusMessageParser;
   import com.sulake.habbo.communication.messages.parser.users.ApproveNameMessageParser;
   import com.sulake.habbo.communication.messages.parser.users.ScrSendUserInfoMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.friendlist.IHabboFriendList;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.inventory.events.HabboInventoryItemAddedEvent;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.events.RoomEngineObjectEvent;
   import com.sulake.habbo.room.events.RoomEngineObjectPlacedEvent;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.habbo.session.IRoomSession;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   import com.sulake.habbo.session.product.IProductDataListener;
   import com.sulake.habbo.sound.HabboSoundTypesEnum;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboIconType;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import com.sulake.habbo.window.utils.IConfirmDialog;
   import com.sulake.iid.IIDAvatarRenderManager;
   import com.sulake.iid.IIDCoreLocalizationManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboFriendList;
   import com.sulake.iid.IIDHabboInventory;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboSoundManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDRoomEngine;
   import com.sulake.iid.IIDSessionDataManager;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import iid.IIDHabboWindowManager;
   
   public class HabboCatalog extends Component implements IHabboCatalog, IProductDataListener
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_181:IHabboToolbar;
      
      private var var_180:IHabboConfigurationManager;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_15:IRoomSessionManager;
      
      private var var_1115:IRoomSession;
      
      private var _localization:ICoreLocalizationManager;
      
      private var _inventory:IHabboInventory;
      
      private var var_295:ISessionDataManager;
      
      private var var_506:IAvatarRenderManager;
      
      private var var_501:IHabboSoundManager;
      
      private var _friendList:IHabboFriendList;
      
      private var var_775:Boolean = false;
      
      private var var_316:CatalogViewer;
      
      private var var_378:ICatalogNavigator;
      
      private var var_106:Purse;
      
      private var var_92:RecyclerLogic;
      
      private var var_140:IMarketPlace;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_227:PurchaseConfirmationDialog;
      
      private var var_317:ChargeConfirmationDialog;
      
      private var var_783:String = "";
      
      private var var_986:int = -1;
      
      private var var_1860:int = -1;
      
      private var var_2606:Boolean = true;
      
      private var var_2604:Boolean = true;
      
      private var var_1859:Boolean = false;
      
      private var var_2605:GiftWrappingConfiguration;
      
      private var var_1209:ClubGiftController;
      
      private var var_528:ClubBuyController;
      
      private var var_782:Map;
      
      private var var_1210:Boolean = false;
      
      private var var_985:IPurchasableOffer;
      
      private var var_1208:IDragAndDropDoneReceiver;
      
      private var var_87:PlacedObjectPurchaseData;
      
      public function HabboCatalog(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_782 = new Map();
         super(param1,param2,param3);
         this.var_106 = new Purse();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationReady);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationReady);
         queueInterface(new IIDRoomEngine(),this.onRoomEngineReady);
         queueInterface(new IIDCoreLocalizationManager(),this.onLocalizationReady);
         queueInterface(new IIDHabboInventory(),this.onInventoryReady);
         queueInterface(new IIDSessionDataManager(),this.sessionDataManagerReady);
         queueInterface(new IIDAvatarRenderManager(),this.onAvatarRenderManagerReady);
         queueInterface(new IIDHabboSoundManager(),this.onSoundManagerReady);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
         queueInterface(new IIDHabboFriendList(),this.onFriendListReady);
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_295;
      }
      
      public function get avatarRenderManager() : IAvatarRenderManager
      {
         return this.var_506;
      }
      
      public function get localization() : ICoreLocalizationManager
      {
         return this._localization;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get configuration() : IHabboConfigurationManager
      {
         return this.var_180;
      }
      
      public function get connection() : IConnection
      {
         return this._communication.getHabboMainConnection(null);
      }
      
      public function get giftWrappingConfiguration() : GiftWrappingConfiguration
      {
         return this.var_2605;
      }
      
      public function get roomEngine() : IRoomEngine
      {
         return this._roomEngine;
      }
      
      public function get soundManager() : IHabboSoundManager
      {
         return this.var_501;
      }
      
      override public function dispose() : void
      {
         this.reset();
         if(this.var_181)
         {
            this.var_181.release(new IIDHabboToolbar());
            this.var_181 = null;
         }
         if(this.var_501)
         {
            this.var_501.release(new IIDHabboSoundManager());
            this.var_501 = null;
         }
         if(this.var_295)
         {
            this.var_295.release(new IIDSessionDataManager());
            this.var_295 = null;
         }
         if(this.var_506)
         {
            this.var_506.release(new IIDAvatarRenderManager());
            this.var_506 = null;
         }
         if(this.var_180)
         {
            this.var_180.release(new IIDHabboConfigurationManager());
            this.var_180 = null;
         }
         if(this._friendList)
         {
            this._friendList.release(new IIDHabboFriendList());
            this._friendList = null;
         }
         if(this._inventory)
         {
            this._inventory.release(new IIDHabboInventory());
            this._inventory = null;
         }
         if(this._localization)
         {
            this._localization.release(new IIDCoreLocalizationManager());
            this._localization = null;
         }
         if(this._roomEngine != null)
         {
            this._roomEngine.release(new IIDRoomEngine());
            this._roomEngine = null;
         }
         if(this._windowManager != null)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this._communication != null)
         {
            this._communication.release(new IIDHabboCommunicationManager());
            this._communication = null;
         }
         if(this.var_227 != null)
         {
            this.var_227.dispose();
            this.var_227 = null;
         }
         if(this.var_317 != null)
         {
            this.var_317.dispose();
            this.var_317 = null;
         }
         if(this.var_92 != null)
         {
            this.var_92.dispose();
            this.var_92 = null;
         }
         this.var_106 = null;
         this.var_140 = null;
         if(this.var_528 != null)
         {
            this.var_528.dispose();
            this.var_528 = null;
         }
         if(this.var_782 != null)
         {
            this.var_782.dispose();
            this.var_782 = null;
         }
         this.var_1115 = null;
         if(this.var_15 != null)
         {
            this.var_15.events.removeEventListener(RoomSessionEvent.const_85,this.onRoomSessionEvent);
            this.var_15.events.removeEventListener(RoomSessionEvent.const_94,this.onRoomSessionEvent);
            this.var_15.release(new IIDHabboRoomSessionManager());
            this.var_15 = null;
         }
         this.resetPlacedOfferData();
         this.var_1210 = false;
         this.var_1208 = null;
         super.dispose();
      }
      
      private function init() : void
      {
         if(!this.var_775)
         {
            this.createMainWindow();
            this.createCatalogNavigator();
            this.createCatalogViewer();
            this.refreshCatalogIndex();
            this.var_775 = true;
            this.updatePurse();
            this.createRecycler();
            this.createMarketPlace();
            this.createClubGiftController();
            this.getGiftWrappingConfiguration();
            this.createClubBuyController();
         }
      }
      
      private function reset() : void
      {
         this.var_775 = false;
         if(this.var_316 != null)
         {
            this.var_316.dispose();
            this.var_316 = null;
         }
         if(this.var_378 != null)
         {
            this.var_378.dispose();
            this.var_378 = null;
         }
         if(this._mainContainer != null)
         {
            this._mainContainer.dispose();
            this._mainContainer = null;
         }
      }
      
      public function loadCatalogPage(param1:int, param2:int) : void
      {
         this._communication.getHabboMainConnection(null).send(new GetCatalogPageComposer(param1,param2));
      }
      
      public function purchaseProduct(param1:int, param2:int, param3:String = "") : void
      {
         this._communication.getHabboMainConnection(null).send(new PurchaseFromCatalogComposer(param1,param2,param3));
      }
      
      public function purchaseProductAsGift(param1:int, param2:IPurchasableOffer, param3:String, param4:String, param5:String, param6:int, param7:int, param8:int) : void
      {
         var _loc9_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc9_ == null)
         {
            return;
         }
         _loc9_.send(new PurchaseFromCatalogAsGiftComposer(param1,param2.offerId,param3,param4,param5,param6,param7,param8));
      }
      
      public function approveName(param1:String, param2:int) : void
      {
         this._communication.getHabboMainConnection(null).send(new ApproveNameMessageComposer(param1,param2));
      }
      
      public function getRentableBotDefinitions() : void
      {
         this._communication.getHabboMainConnection(null).send(new GetRentableBotDefinitionsMessageComposer());
      }
      
      public function getRecyclerStatus() : void
      {
         this._communication.getHabboMainConnection(null).send(new GetRecyclerStatusMessageComposer());
      }
      
      public function getRecyclerPrizes() : void
      {
         this._communication.getHabboMainConnection(null).send(new GetRecyclerPrizesMessageComposer());
      }
      
      public function sendRecycleItems(param1:Array) : void
      {
         this._communication.getHabboMainConnection(null).send(new RecycleItemsMessageComposer(param1));
      }
      
      public function showPurchaseConfirmation(param1:IPurchasableOffer, param2:int, param3:String = "", param4:Boolean = true) : void
      {
         var _loc5_:* = null;
         if(param1.priceInCredits > 0 && param1.priceInCredits > this.var_106.credits)
         {
            this.showNotEnoughCreditsAlert();
            return;
         }
         if(param1.priceInActivityPoints > 0 && param1.priceInActivityPoints > this.var_106.getActivityPointsForType(param1.activityPointType))
         {
            this.showNotEnoughActivityPointsAlert(param1.activityPointType);
            return;
         }
         if(param1 is Offer)
         {
            if(this.var_227 == null)
            {
               this.var_227 = new PurchaseConfirmationDialog(this._localization);
            }
            _loc5_ = [];
            if(this._friendList != null)
            {
               _loc5_ = this._friendList.getFriendNames();
            }
            this.var_227.showOffer(this,param1,param2,param3,_loc5_);
            if(param4)
            {
               this._communication.getHabboMainConnection(null).send(new GetIsOfferGiftableComposer(param1.offerId));
            }
         }
         else if(param1 is ClubBuyOfferData)
         {
            this.var_528.showConfirmation(param1 as ClubBuyOfferData,param2);
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function onCommunicationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._communication = param2 as IHabboCommunicationManager;
         this._communication.addHabboConnectionMessageEvent(new CatalogIndexMessageEvent(this.onCatalogIndex));
         this._communication.addHabboConnectionMessageEvent(new CatalogPageMessageEvent(this.onCatalogPage));
         this._communication.addHabboConnectionMessageEvent(new CatalogPublishedMessageEvent(this.onCatalogPublished));
         this._communication.addHabboConnectionMessageEvent(new PurchaseErrorMessageEvent(this.onPurchaseError));
         this._communication.addHabboConnectionMessageEvent(new PurchaseNotAllowedMessageEvent(this.onPurchaseNotAllowed));
         this._communication.addHabboConnectionMessageEvent(new PurchaseOKMessageEvent(this.onPurchaseOK));
         this._communication.addHabboConnectionMessageEvent(new GiftReceiverNotFoundEvent(this.onGiftReceiverNotFound));
         this._communication.addHabboConnectionMessageEvent(new NotEnoughBalanceMessageEvent(this.onNotEnoughBalance));
         this._communication.addHabboConnectionMessageEvent(new CreditBalanceEvent(this.onCreditBalance));
         this._communication.addHabboConnectionMessageEvent(new HabboActivityPointNotificationMessageEvent(this.onActivityPointNotification));
         this._communication.addHabboConnectionMessageEvent(new ActivityPointsMessageEvent(this.onActivityPoints));
         this._communication.addHabboConnectionMessageEvent(new VoucherRedeemOkMessageEvent(this.onVoucherRedeemOk));
         this._communication.addHabboConnectionMessageEvent(new VoucherRedeemErrorMessageEvent(this.onVoucherRedeemError));
         this._communication.addHabboConnectionMessageEvent(new ApproveNameMessageEvent(this.onApproveNameResult));
         this._communication.addHabboConnectionMessageEvent(new ScrSendUserInfoEvent(this.onSubscriptionInfo));
         this._communication.addHabboConnectionMessageEvent(new ClubGiftInfoEvent(this.onClubGiftInfo));
         this._communication.addHabboConnectionMessageEvent(new RecyclerStatusMessageEvent(this.onRecyclerStatus));
         this._communication.addHabboConnectionMessageEvent(new RecyclerFinishedMessageEvent(this.onRecyclerFinished));
         this._communication.addHabboConnectionMessageEvent(new RecyclerPrizesMessageEvent(this.onRecyclerPrizes));
         this._communication.addHabboConnectionMessageEvent(new RentableBotDefinitionsMessageEvent(this.onRentableBotDefinitions));
         this._communication.addHabboConnectionMessageEvent(new MarketPlaceOffersEvent(this.onMarketPlaceOffers));
         this._communication.addHabboConnectionMessageEvent(new MarketPlaceOwnOffersEvent(this.onMarketPlaceOwnOffers));
         this._communication.addHabboConnectionMessageEvent(new MarketplaceBuyOfferResultEvent(this.onMarketPlaceBuyResult));
         this._communication.addHabboConnectionMessageEvent(new MarketplaceCancelOfferResultEvent(this.onMarketPlaceCancelResult));
         this._communication.addHabboConnectionMessageEvent(new GiftWrappingConfigurationEvent(this.onGiftWrappingConfiguration));
         this._communication.addHabboConnectionMessageEvent(new MarketplaceItemStatsEvent(this.onMarketplaceItemStats));
         this._communication.addHabboConnectionMessageEvent(new IsOfferGiftableMessageEvent(this.onIsOfferGiftable));
         this._communication.addHabboConnectionMessageEvent(new MarketplaceConfigurationEvent(this.onMarketplaceConfiguration));
         this._communication.addHabboConnectionMessageEvent(new MarketplaceMakeOfferResult(this.onMarketplaceMakeOfferResult));
         this._communication.addHabboConnectionMessageEvent(new HabboClubOffersMessageEvent(this.onHabboClubOffers));
         this._communication.addHabboConnectionMessageEvent(new ChargeInfoMessageEvent(this.onChargeInfo));
         this._communication.addHabboConnectionMessageEvent(new CloseConnectionMessageEvent(this.onRoomExit));
         this._communication.addHabboConnectionMessageEvent(new SellablePetBreedsMessageEvent(this.onSellableBreeds));
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_181 = param2 as IHabboToolbar;
         this.var_181.events.addEventListener(HabboToolbarEvent.const_65,this.onHabboToolbarEvent);
         this.var_181.events.addEventListener(HabboToolbarEvent.const_39,this.onHabboToolbarEvent);
         this.setHabboToolbarIcon();
      }
      
      private function onConfigurationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_180 = param2 as IHabboConfigurationManager;
      }
      
      private function onLocalizationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._localization = param2 as ICoreLocalizationManager;
      }
      
      private function onInventoryReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._inventory = param2 as IHabboInventory;
         this._inventory.events.addEventListener(HabboInventoryItemAddedEvent.HABBO_INVENTORY_ITEM_ADDED,this.onItemAddedToInventory);
      }
      
      private function sessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_295 = param2 as ISessionDataManager;
      }
      
      private function onAvatarRenderManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_506 = param2 as IAvatarRenderManager;
      }
      
      private function onRoomEngineReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._roomEngine = param2 as IRoomEngine;
         this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_170,this.onObjectPlaced);
      }
      
      private function onSoundManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_501 = param2 as IHabboSoundManager;
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_85,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_94,this.onRoomSessionEvent);
      }
      
      private function onFriendListReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._friendList = param2 as IHabboFriendList;
      }
      
      public function openCatalog() : void
      {
         this.toggleCatalog(true);
      }
      
      public function openCatalogPage(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:* = null;
         if(param2)
         {
            _loc3_ = this._localization.getLocalization(param1);
            if(_loc3_ != null)
            {
               param1 = _loc3_.value;
            }
         }
         if(!this.var_775)
         {
            this.toggleCatalog();
            this.var_986 = -1;
            this.var_783 = param1;
         }
         else
         {
            this.toggleCatalog(true);
            this.var_378.openPage(param1);
         }
      }
      
      public function openCatalogPageById(param1:int, param2:int) : void
      {
         if(this.var_775)
         {
            this.toggleCatalog(true);
            this.var_378.openPageById(param1,param2);
         }
         else
         {
            this.toggleCatalog();
            this.var_986 = param1;
            this.var_1860 = param2;
            this.var_783 = null;
         }
      }
      
      public function openInventoryCategory(param1:String) : void
      {
         if(this._inventory == null)
         {
            return;
         }
         this._inventory.toggleInventoryPage(param1);
      }
      
      public function openCreditsHabblet() : void
      {
         var _loc2_:* = null;
         if(this.var_180 == null)
         {
            return;
         }
         var _loc1_:* = this.var_180.getKey("client.credits.embed.enabled","false") == "true";
         if(false && _loc1_)
         {
            ExternalInterface.call("FlashExternalInterface.openHabblet","credits");
         }
         else
         {
            _loc2_ = this.var_180.getKey("link.format.credits","/credits");
            this._windowManager.alert("${catalog.alert.external.link.title}","${catalog.alert.external.link.desc}",0,this.onExternalLink);
            HabboWebTools.navigateToURL(_loc2_,"habboMain");
         }
      }
      
      public function setupInventoryForRecycler(param1:Boolean) : void
      {
         if(this._inventory == null)
         {
            return;
         }
         this._inventory.setupRecycler(param1);
      }
      
      public function get privateRoomSessionActive() : Boolean
      {
         return this.var_1859;
      }
      
      public function get tradingActive() : Boolean
      {
         if(this._inventory == null)
         {
            return false;
         }
         return this._inventory.tradingActive;
      }
      
      public function requestInventoryFurniToRecycler() : int
      {
         if(this._inventory == null)
         {
            return 0;
         }
         return this._inventory.requestSelectedFurniToRecycler();
      }
      
      public function returnInventoryFurniFromRecycler(param1:int) : Boolean
      {
         if(this._inventory == null)
         {
            return false;
         }
         return this._inventory.returnInventoryFurniFromRecycler(param1);
      }
      
      public function getProductData(param1:String) : IProductData
      {
         return this.var_295.getProductData(param1);
      }
      
      public function getFurnitureData(param1:int, param2:String) : IFurnitureData
      {
         var _loc3_:* = null;
         if(param2 == ProductTypeEnum.const_82)
         {
            _loc3_ = this.var_295.getFloorItemData(param1);
         }
         if(param2 == ProductTypeEnum.const_80)
         {
            _loc3_ = this.var_295.getWallItemData(param1);
         }
         return _loc3_;
      }
      
      public function getPurse() : IPurse
      {
         return this.var_106;
      }
      
      public function getRecycler() : IRecycler
      {
         return this.var_92;
      }
      
      public function getMarketPlace() : IMarketPlace
      {
         return this.var_140;
      }
      
      public function getClubGiftController() : ClubGiftController
      {
         return this.var_1209;
      }
      
      public function getClubBuyController() : ClubBuyController
      {
         return this.var_528;
      }
      
      public function getPublicMarketPlaceOffers(param1:int, param2:int, param3:String, param4:int) : void
      {
         this._communication.getHabboMainConnection(null).send(new GetOffersMessageComposer(param1,param2,param3,param4));
      }
      
      public function getOwnMarketPlaceOffers() : void
      {
         this._communication.getHabboMainConnection(null).send(new GetOwnOffersMessageComposer());
      }
      
      public function buyMarketPlaceOffer(param1:int) : void
      {
         this._communication.getHabboMainConnection(null).send(new BuyOfferMessageComposer(param1));
      }
      
      public function redeemSoldMarketPlaceOffers() : void
      {
         this._communication.getHabboMainConnection(null).send(new RedeemOfferCreditsMessageComposer());
      }
      
      public function redeemExpiredMarketPlaceOffer(param1:int) : void
      {
         this._communication.getHabboMainConnection(null).send(new CancelOfferMessageComposer(param1));
      }
      
      public function getMarketplaceItemStats(param1:int, param2:int) : void
      {
         if(!this._communication)
         {
            return;
         }
         var _loc3_:IConnection = this._communication.getHabboMainConnection(null);
         if(!_loc3_)
         {
            return;
         }
         _loc3_.send(new GetMarketplaceItemStatsComposer(param1,param2));
      }
      
      public function getPixelEffectIcon(param1:int) : BitmapData
      {
         var _loc2_:BitmapDataAsset = (this._inventory as Component).assets.getAssetByName("fx_icon_" + param1 + "_png") as BitmapDataAsset;
         if(_loc2_ != null)
         {
            return (_loc2_.content as BitmapData).clone();
         }
         return new BitmapData(1,1,true,16777215);
      }
      
      public function getSubscriptionProductIcon(param1:int) : BitmapData
      {
         var _loc2_:BitmapDataAsset = assets.getAssetByName("ctlg_icon_deal_hc") as BitmapDataAsset;
         if(_loc2_ != null)
         {
            return (_loc2_.content as BitmapData).clone();
         }
         return new BitmapData(1,1,true,16777215);
      }
      
      public function getSellablePetBreeds(param1:String) : Array
      {
         var _loc2_:Array = this.var_782.getValue(param1);
         if(_loc2_ != null)
         {
            return _loc2_.slice();
         }
         this._communication.getHabboMainConnection(null).send(new GetSellablePetBreedsComposer(param1));
         return null;
      }
      
      private function updatePurse() : void
      {
         var _loc2_:* = null;
         if(this._mainContainer == null)
         {
            return;
         }
         this._localization.registerParameter("catalog.purse.creditbalance","balance",String(this.var_106.credits));
         this._localization.registerParameter("catalog.purse.pixelbalance","balance",String(this.var_106.getActivityPointsForType(Purse.const_186)));
         var _loc1_:int = 0;
         if(!this.var_106.hasClubLeft)
         {
            _loc2_ = "catalog.purse.club.join";
         }
         else
         {
            if(this.var_106.isVIP)
            {
               _loc2_ = "catalog.purse.vipdays";
               _loc1_ = 0;
            }
            else
            {
               _loc2_ = "catalog.purse.clubdays";
            }
            this._localization.registerParameter(_loc2_,"days",String(this.var_106.clubDays));
            this._localization.registerParameter(_loc2_,"months",String(this.var_106.clubPeriods));
         }
         var _loc3_:IIconWindow = this._mainContainer.findChildByName("clubIcon") as IIconWindow;
         if(_loc3_)
         {
            _loc3_.style = _loc1_;
         }
         var _loc4_:ITextWindow = this._mainContainer.findChildByName("clubText") as ITextWindow;
         if(_loc4_)
         {
            _loc4_.caption = this._localization.getKey(_loc2_);
         }
      }
      
      private function setHabboToolbarIcon() : void
      {
         this.var_181.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_156,HabboToolbarIconEnum.CATALOGUE));
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_65)
         {
            this.setHabboToolbarIcon();
         }
         if(param1.iconId != HabboToolbarIconEnum.CATALOGUE)
         {
            return;
         }
         if(param1.type == HabboToolbarEvent.const_39)
         {
            this.toggleCatalog();
         }
      }
      
      private function toggleCatalog(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         if(!this.var_775)
         {
            if(!this.var_295.loadProductData(this))
            {
               return;
            }
            this.init();
            _loc2_ = true;
         }
         if(this._mainContainer == null)
         {
            return;
         }
         this._mainContainer.visible = !!param1 ? true : !this._mainContainer.visible;
         if(this._mainContainer.visible)
         {
            this._mainContainer.activate();
         }
         if(this.var_181 != null && _loc2_)
         {
            this.var_181.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_55,HabboToolbarIconEnum.CATALOGUE,this._mainContainer));
         }
         if(this._mainContainer.visible)
         {
            events.dispatchEvent(new Event(HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_OPEN));
            if(this.var_92 != null && this.getCurrentLayoutCode() == "recycler")
            {
               this.var_92.activate();
            }
         }
         else
         {
            events.dispatchEvent(new Event(HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_CLOSE));
            if(this.var_92 != null && this.getCurrentLayoutCode() == "recycler")
            {
               this.var_92.cancel();
            }
         }
         this.setupInventoryForRecycler(this.var_92.active && this._mainContainer.visible);
      }
      
      private function getCurrentLayoutCode() : String
      {
         if(this.var_316 == null)
         {
            return "";
         }
         return this.var_316.getCurrentLayoutCode();
      }
      
      private function refreshCatalogIndex() : void
      {
         this._communication.getHabboMainConnection(null).send(new GetCatalogIndexComposer());
      }
      
      private function createCatalogNavigator() : void
      {
         var _loc1_:IWindowContainer = this._mainContainer.findChildByName("navigatorMain") as IWindowContainer;
         this.var_378 = new CatalogNavigator(this,_loc1_) as ICatalogNavigator;
         var _loc2_:BitmapDataAsset = assets.getAssetByName("purse_coins_small") as BitmapDataAsset;
         this.setElementImage("creditsIcon",_loc2_.content as BitmapData);
         var _loc3_:BitmapDataAsset = assets.getAssetByName("purse_pixels_small") as BitmapDataAsset;
         this.setElementImage("pixelsIcon",_loc3_.content as BitmapData);
         var _loc4_:BitmapDataAsset = assets.getAssetByName("purse_club_small") as BitmapDataAsset;
         this.setElementImage("clubIcon",_loc4_.content as BitmapData);
      }
      
      private function createCatalogViewer() : void
      {
         var _loc1_:IWindowContainer = this._mainContainer.findChildByName("layoutContainer") as IWindowContainer;
         this.var_316 = new CatalogViewer(this,_loc1_,this._roomEngine);
         this.var_316.habboCatalog = this;
      }
      
      private function createMainWindow() : void
      {
         var _loc1_:XmlAsset = assets.getAssetByName("catalog") as XmlAsset;
         this._mainContainer = this._windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
         this._mainContainer.tags.push("habbo_catalog");
         this._mainContainer.x = -500;
         this._mainContainer.visible = false;
         var _loc2_:BitmapDataAsset = assets.getAssetByName("layout_bg") as BitmapDataAsset;
         this.setElementImage("layoutBackground",_loc2_.content as BitmapData);
         var _loc3_:IWindowContainer = this._mainContainer.findChildByName("navigatorMain") as IWindowContainer;
         _loc3_.setParamFlag(WindowParam.const_228,false);
         var _loc4_:IWindow = this._mainContainer.findChildByName("titlebar_close_button");
         if(_loc4_ == null)
         {
            _loc4_ = this._mainContainer.findChildByTag("close");
         }
         if(_loc4_ != null)
         {
            _loc4_.procedure = this.onWindowClose;
         }
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_85:
               this.var_1859 = param1.session.isPrivateRoom;
               this.var_1115 = param1.session;
               if(this.var_92 != null)
               {
                  this.var_92.setRoomSessionActive(true);
               }
               break;
            case RoomSessionEvent.const_94:
               this.var_1859 = false;
               this.var_1115 = null;
               if(this.var_92 != null)
               {
                  this.var_92.setRoomSessionActive(false);
               }
         }
      }
      
      private function createRecycler() : void
      {
         this.var_92 = new RecyclerLogic(this,this._windowManager);
         this.getRecyclerPrizes();
      }
      
      private function createMarketPlace() : void
      {
         if(this.var_140 == null)
         {
            this.var_140 = new MarketPlaceLogic(this,this._windowManager,this._roomEngine);
         }
      }
      
      private function createClubGiftController() : void
      {
         if(this.var_1209 == null)
         {
            this.var_1209 = new ClubGiftController(this);
         }
      }
      
      private function createClubBuyController() : void
      {
         if(this.var_528 == null)
         {
            this.var_528 = new ClubBuyController(this);
         }
      }
      
      private function getGiftWrappingConfiguration() : void
      {
         var _loc1_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.send(new GetGiftWrappingConfigurationComposer());
      }
      
      public function getHabboClubOffers() : void
      {
         var _loc1_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.send(new GetClubOffersMessageComposer());
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._mainContainer.visible = false;
         if(this.var_92 != null && this.getCurrentLayoutCode() == "recycler")
         {
            this.var_92.cancel();
            this.setupInventoryForRecycler(false);
         }
      }
      
      private function onCatalogIndex(param1:IMessageEvent) : void
      {
         if(param1 as CatalogIndexMessageEvent == null)
         {
            return;
         }
         if(this.var_378 == null)
         {
            return;
         }
         var _loc2_:NodeData = (param1 as CatalogIndexMessageEvent).root;
         this.var_378.buildCatalogIndex(_loc2_);
         if(this.var_783 && this.var_783 != "")
         {
            this.var_378.openPage(this.var_783);
            this.var_783 = "";
            this.var_986 = -1;
         }
         else if(this.var_986 > -1)
         {
            this.var_378.openPageById(this.var_986,this.var_1860);
            this.var_986 = -1;
            this.var_1860 = -1;
            this.var_783 = "";
         }
         else
         {
            this.var_378.openFrontPage();
         }
      }
      
      private function onCatalogPage(param1:IMessageEvent) : void
      {
         var _loc2_:CatalogPageMessageEvent = param1 as CatalogPageMessageEvent;
         var _loc3_:CatalogPageMessageParser = _loc2_.getParser();
         var _loc4_:int = _loc3_.pageId;
         var _loc5_:String = _loc3_.layoutCode;
         var _loc6_:Array = _loc3_.localization.images.concat();
         var _loc7_:Array = _loc3_.localization.texts.concat();
         var _loc8_:IPageLocalization = new PageLocalization(_loc6_,_loc7_);
         var _loc9_:int = _loc3_.offerId;
         this.var_316.showCatalogPage(_loc4_,_loc5_,_loc8_,_loc3_.offers,_loc9_);
      }
      
      private function onCatalogPublished(param1:IMessageEvent) : void
      {
         var _loc2_:Boolean = false;
         if(this._mainContainer != null)
         {
            _loc2_ = this._mainContainer.visible;
         }
         this.reset();
         if(_loc2_)
         {
            this._windowManager.alert("${catalog.alert.published.title}","${catalog.alert.published.description}",0,this.alertDialogEventProcessor);
         }
      }
      
      private function onPurchaseError(param1:IMessageEvent) : void
      {
         this._windowManager.alert("${catalog.alert.purchaseerror.title}","${catalog.alert.purchaseerror.description}",0,this.alertDialogEventProcessor);
      }
      
      private function onPurchaseNotAllowed(param1:IMessageEvent) : void
      {
         var _loc2_:PurchaseNotAllowedMessageEvent = param1 as PurchaseNotAllowedMessageEvent;
         var _loc3_:PurchaseNotAllowedMessageParser = _loc2_.getParser();
         var _loc4_:int = _loc3_.errorCode;
         var _loc5_:String = "";
         switch(_loc4_)
         {
            case 1:
               _loc5_ = "${catalog.alert.purchasenotallowed.hc.description}";
               break;
            default:
               _loc5_ = "${catalog.alert.purchasenotallowed.unknown.description}";
         }
         this._windowManager.alert("${catalog.alert.purchasenotallowed.title}",_loc5_,0,this.alertDialogEventProcessor);
      }
      
      private function onPurchaseOK(param1:IMessageEvent) : void
      {
         if(this.var_227 != null)
         {
            this.var_227.dispose();
         }
      }
      
      private function onGiftReceiverNotFound(param1:GiftReceiverNotFoundEvent) : void
      {
         if(this.var_227 != null)
         {
            this.var_227.receiverNotFound();
         }
      }
      
      private function onNotEnoughBalance(param1:IMessageEvent) : void
      {
         var _loc2_:NotEnoughBalanceMessageEvent = param1 as NotEnoughBalanceMessageEvent;
         var _loc3_:NotEnoughBalanceMessageParser = _loc2_.getParser();
         if(_loc3_.notEnoughCredits > 0)
         {
            this.showNotEnoughCreditsAlert();
         }
         else if(_loc3_.notEnoughActivityPoints > 0)
         {
            this.showNotEnoughActivityPointsAlert(_loc3_.activityPointType);
         }
         if(this.var_227 != null)
         {
            this.var_227.notEnoughCredits();
         }
      }
      
      public function showNotEnoughCreditsAlert() : void
      {
         if(!this._windowManager)
         {
            return;
         }
         this._windowManager.confirm("${catalog.alert.notenough.title}","${catalog.alert.notenough.credits.description}",0,this.noCreditsConfirmDialogEventProcessor);
      }
      
      private function showNotEnoughActivityPointsAlert(param1:int) : void
      {
         var _loc2_:String = "catalog.alert.notenough.activitypoints.title." + param1;
         var _loc3_:String = "catalog.alert.notenough.activitypoints.description." + param1;
         if(param1 == 0)
         {
            this._windowManager.confirm(this.localization.getKey(_loc2_),this.localization.getKey(_loc3_),0,this.noPixelsConfirmDialogEventProcessor);
         }
         else
         {
            this._windowManager.alert(this.localization.getKey(_loc2_),this.localization.getKey(_loc3_),0,this.alertDialogEventProcessor);
         }
      }
      
      private function onVoucherRedeemOk(param1:VoucherRedeemOkMessageEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:* = "${catalog.alert.voucherredeem.ok.description}";
         if(param1.productName != "")
         {
            _loc2_ = "catalog.alert.voucherredeem.ok.description.furni";
            this._localization.registerParameter(_loc2_,"productName",param1.productName);
            this._localization.registerParameter(_loc2_,"productDescription",param1.productDescription);
            _loc2_ = "${" + _loc2_ + "}";
         }
         this._windowManager.alert("${catalog.alert.voucherredeem.ok.title}",_loc2_,0,this.alertDialogEventProcessor);
      }
      
      private function onVoucherRedeemError(param1:VoucherRedeemErrorMessageEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc3_:* = "${catalog.alert.voucherredeem.error.description." + param1.errorCode + "}";
         this._windowManager.alert("${catalog.alert.voucherredeem.error.title}",_loc3_,0,this.alertDialogEventProcessor);
      }
      
      private function onApproveNameResult(param1:ApproveNameMessageEvent) : void
      {
         if(param1 == null || this.var_316 == null)
         {
            return;
         }
         var _loc2_:ApproveNameMessageParser = param1.getParser();
         this.var_316.dispatchWidgetEvent(new CatalogWidgetApproveNameResultEvent(_loc2_.result,_loc2_.nameValidationInfo));
      }
      
      private function onCreditBalance(param1:IMessageEvent) : void
      {
         var _loc2_:CreditBalanceEvent = param1 as CreditBalanceEvent;
         var _loc3_:CreditBalanceParser = _loc2_.getParser();
         this.var_106.credits = _loc3_.balance;
         this.updatePurse();
         if(!this.var_2606 && this.var_501 != null)
         {
            this.var_501.playSound(HabboSoundTypesEnum.const_1063);
         }
         this.var_2606 = false;
         if(this.var_317 != null)
         {
            this.var_317.refresh();
         }
         events.dispatchEvent(new PurseEvent(PurseEvent.const_69,this.var_106.credits));
      }
      
      private function onActivityPointNotification(param1:IMessageEvent) : void
      {
         var _loc2_:HabboActivityPointNotificationMessageEvent = param1 as HabboActivityPointNotificationMessageEvent;
         this.var_106.activityPoints[_loc2_.type] = _loc2_.amount;
         this.updatePurse();
         if(!this.var_2604 && this.var_501 != null)
         {
            this.var_501.playSound(HabboSoundTypesEnum.const_1056);
         }
         this.var_2604 = false;
         if(this.var_317 != null)
         {
            this.var_317.refresh();
         }
         if(_loc2_.type == Purse.const_186)
         {
            events.dispatchEvent(new PurseEvent(PurseEvent.const_106,_loc2_.amount));
         }
      }
      
      private function onActivityPoints(param1:IMessageEvent) : void
      {
         var _loc2_:ActivityPointsMessageEvent = param1 as ActivityPointsMessageEvent;
         this.var_106.activityPoints = _loc2_.points;
         this.updatePurse();
         if(_loc2_.points["null"] != null)
         {
            events.dispatchEvent(new PurseEvent(PurseEvent.const_106,_loc2_.points["null"]));
         }
      }
      
      private function onSubscriptionInfo(param1:IMessageEvent) : void
      {
         var _loc2_:ScrSendUserInfoMessageParser = (param1 as ScrSendUserInfoEvent).getParser();
         this.var_106.clubDays = Math.max(0,_loc2_.daysToPeriodEnd);
         this.var_106.clubPeriods = Math.max(0,_loc2_.periodsSubscribedAhead);
         this.var_106.isVIP = _loc2_.isVIP;
         this.var_106.pastClubDays = _loc2_.pastClubDays;
         this.var_106.pastVipDays = _loc2_.pastVipDays;
         this.updatePurse();
         if(_loc2_.responseType == 2)
         {
            this.reset();
            this.toggleCatalog(true);
         }
      }
      
      private function onClubGiftInfo(param1:ClubGiftInfoEvent) : void
      {
         if(!param1 || !this.var_1209)
         {
            return;
         }
         var _loc2_:ClubGiftInfoParser = param1.getParser();
         if(!_loc2_)
         {
            return;
         }
         this.var_1209.setInfo(_loc2_.daysUntilNextGift,_loc2_.giftsAvailable,_loc2_.offers,_loc2_.giftData);
      }
      
      private function onRecyclerStatus(param1:IMessageEvent) : void
      {
         var _loc2_:RecyclerStatusMessageParser = (param1 as RecyclerStatusMessageEvent).getParser();
         if(_loc2_ == null || this.var_92 == null)
         {
            return;
         }
         this.var_92.setSystemStatus(_loc2_.recyclerStatus,_loc2_.recyclerTimeoutSeconds);
      }
      
      private function onRecyclerFinished(param1:IMessageEvent) : void
      {
         var _loc2_:RecyclerFinishedMessageParser = (param1 as RecyclerFinishedMessageEvent).getParser();
         if(_loc2_ == null || this.var_92 == null)
         {
            return;
         }
         this.var_92.setFinished(_loc2_.recyclerFinishedStatus,_loc2_.prizeId);
      }
      
      private function onRecyclerPrizes(param1:IMessageEvent) : void
      {
         var _loc2_:RecyclerPrizesMessageParser = (param1 as RecyclerPrizesMessageEvent).getParser();
         if(_loc2_ == null || this.var_92 == null)
         {
            return;
         }
         this.var_92.storePrizeTable(_loc2_.prizeLevels);
      }
      
      private function onRentableBotDefinitions(param1:IMessageEvent) : void
      {
         var _loc2_:RentableBotDefinitionsMessageParser = (param1 as RentableBotDefinitionsMessageEvent).getParser();
         this.var_316.dispatchWidgetEvent(new RentableBotDefinitionWidgetEvent(_loc2_.rentableBots));
      }
      
      private function onMarketPlaceOffers(param1:IMessageEvent) : void
      {
         if(this.var_140 != null)
         {
            this.var_140.onOffers(param1);
         }
      }
      
      private function onMarketPlaceOwnOffers(param1:IMessageEvent) : void
      {
         if(this.var_140 != null)
         {
            this.var_140.onOwnOffers(param1);
         }
      }
      
      private function onMarketPlaceBuyResult(param1:IMessageEvent) : void
      {
         if(this.var_140 != null)
         {
            this.var_140.onBuyResult(param1);
         }
      }
      
      private function onMarketPlaceCancelResult(param1:IMessageEvent) : void
      {
         if(this.var_140 != null)
         {
            this.var_140.onCancelResult(param1);
         }
      }
      
      private function onGiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.var_2605 = new GiftWrappingConfiguration(param1);
      }
      
      private function onIsOfferGiftable(param1:IsOfferGiftableMessageEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_227 != null)
         {
            this.var_227.onIsOfferGiftable(param1.getParser());
         }
      }
      
      private function onMarketplaceItemStats(param1:MarketplaceItemStatsEvent) : void
      {
         if(!param1 || !this.var_140)
         {
            return;
         }
         var _loc2_:MarketplaceItemStatsParser = param1.getParser();
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:MarketplaceItemStats = new MarketplaceItemStats();
         _loc3_.averagePrice = _loc2_.averagePrice;
         _loc3_.offerCount = _loc2_.offerCount;
         _loc3_.historyLength = _loc2_.historyLength;
         _loc3_.dayOffsets = _loc2_.dayOffsets;
         _loc3_.averagePrices = _loc2_.averagePrices;
         _loc3_.soldAmounts = _loc2_.soldAmounts;
         _loc3_.furniCategoryId = _loc2_.furniCategoryId;
         _loc3_.furniTypeId = _loc2_.furniTypeId;
         this.var_140.itemStats = _loc3_;
      }
      
      private function onMarketplaceConfiguration(param1:MarketplaceConfigurationEvent) : void
      {
         if(!param1 || !this.var_140)
         {
            return;
         }
         var _loc2_:MarketplaceConfigurationParser = param1.getParser();
         if(!_loc2_)
         {
            return;
         }
         this.var_140.averagePricePeriod = _loc2_.averagePricePeriod;
      }
      
      private function onMarketplaceMakeOfferResult(param1:MarketplaceMakeOfferResult) : void
      {
         if(!param1 || !this.var_140)
         {
            return;
         }
         var _loc2_:MarketplaceMakeOfferResultParser = param1.getParser();
         if(!_loc2_)
         {
            return;
         }
         if(_loc2_.result == 1)
         {
            this.var_140.refreshOffers();
         }
      }
      
      private function onHabboClubOffers(param1:HabboClubOffersMessageEvent) : void
      {
         if(this.var_528 != null)
         {
            this.var_528.onOffers(param1);
         }
      }
      
      private function onChargeInfo(param1:ChargeInfoMessageEvent) : void
      {
         var _loc2_:ChargeInfo = param1.getParser().chargeInfo;
         if(this.var_317 == null)
         {
            this.var_317 = new ChargeConfirmationDialog(this,this._localization);
         }
         this.var_317.showChargeInfo(_loc2_);
      }
      
      private function onRoomExit(param1:IMessageEvent) : void
      {
         if(this.var_317 != null)
         {
            this.var_317.close();
         }
      }
      
      private function onSellableBreeds(param1:SellablePetBreedsMessageEvent) : void
      {
         var _loc2_:SellablePetBreedsParser = param1.getParser();
         this.var_782.remove(_loc2_.productCode);
         var _loc3_:Array = _loc2_.sellableBreeds;
         if(_loc3_ != null)
         {
            this.var_782.add(_loc2_.productCode,_loc3_.slice());
            this.var_316.dispatchWidgetEvent(new CatalogWidgetSellablePetBreedsEvent(_loc2_.productCode,_loc3_.slice()));
         }
      }
      
      private function setElementImage(param1:String, param2:BitmapData) : void
      {
         var _loc3_:IBitmapWrapperWindow = this._mainContainer.findChildByName(param1) as IBitmapWrapperWindow;
         if(_loc3_ != null)
         {
            _loc3_.bitmap = new BitmapData(_loc3_.width,_loc3_.height,true,0);
            _loc3_.bitmap.copyPixels(param2,param2.rect,new Point(0,0));
         }
         else
         {
            Logger.log("Could not find element: " + param1);
         }
      }
      
      private function alertDialogEventProcessor(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
         this.resetPlacedOfferData();
      }
      
      private function noCreditsConfirmDialogEventProcessor(param1:IConfirmDialog, param2:Event) : void
      {
         var _loc3_:* = null;
         param1.dispose();
         this.resetPlacedOfferData();
         if(param2.type == WindowEvent.const_179)
         {
            if(false && "true" == this.var_180.getKey("client.credits.embed.enabled"))
            {
               ExternalInterface.call("FlashExternalInterface.openHabblet","credits");
            }
            else
            {
               _loc3_ = this.var_180.getKey("link.format.credits");
               if(_loc3_ != "")
               {
                  this._windowManager.alert("${catalog.alert.external.link.title}","${catalog.alert.external.link.desc}",0,this.onExternalLink);
                  HabboWebTools.navigateToURL(_loc3_,"habboMain");
               }
            }
         }
      }
      
      private function noPixelsConfirmDialogEventProcessor(param1:IConfirmDialog, param2:Event) : void
      {
         var _loc3_:* = null;
         param1.dispose();
         this.resetPlacedOfferData();
         if(param2.type == WindowEvent.const_179)
         {
            _loc3_ = this.var_180.getKey("link.format.pixels");
            if(_loc3_ != "")
            {
               this._windowManager.alert("${catalog.alert.external.link.title}","${catalog.alert.external.link.desc}",0,this.onExternalLink);
               HabboWebTools.navigateToURL(_loc3_,"habboMain");
            }
         }
      }
      
      private function onExternalLink(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function redeemVoucher(param1:String) : void
      {
         var _loc2_:* = new RedeemVoucherMessageComposer(param1);
         this._communication.getHabboMainConnection(null).send(_loc2_);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      public function productDataReady() : void
      {
         this.toggleCatalog();
      }
      
      public function requestSelectedItemToMover(param1:IDragAndDropDoneReceiver, param2:Offer) : void
      {
         var _loc4_:int = 0;
         var _loc6_:Boolean = false;
         if(!this.var_180.keyExists("catalog.drag_and_drop") || this.var_180.getKey("catalog.drag_and_drop") != "true")
         {
            return;
         }
         if(!this.var_1115 || !this.var_1115.isRoomOwner)
         {
            return;
         }
         var _loc3_:IProduct = param2.productContainer.firstProduct;
         var _loc5_:Boolean = true;
         switch(_loc3_.productType)
         {
            case ProductTypeEnum.const_82:
               _loc4_ = 0;
               break;
            case ProductTypeEnum.const_80:
               _loc4_ = 0;
               break;
            case ProductTypeEnum.const_184:
               _loc5_ = false;
               break;
            case ProductTypeEnum.const_301:
               _loc5_ = false;
               break;
            default:
               _loc5_ = false;
         }
         if(!_loc5_)
         {
            return;
         }
         _loc6_ = this._roomEngine.initializeRoomObjectInsert(-param2.offerId,_loc4_,_loc3_.productClassId,_loc3_.extraParam.toString());
         if(_loc6_)
         {
            this.var_985 = param2;
            this.var_1208 = param1;
            this._mainContainer.visible = false;
            this.var_1210 = true;
         }
      }
      
      private function onObjectPlaced(param1:RoomEngineObjectPlacedEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(this.var_1210 && param1.type == RoomEngineObjectEvent.const_170)
         {
            this.resetPlacedOfferData();
            if(this.var_985 == null || !param1.placedInRoom)
            {
               this.resetObjectMover();
               return;
            }
            this.var_87 = new PlacedObjectPurchaseData(param1.roomId,param1.roomCategory,param1.objectId,param1.category,param1.wallLocation,param1.x,param1.y,param1.direction,this.var_985);
            if(this.var_1208 != null)
            {
               this.var_1208.onDragAndDropDone(true);
            }
            _loc2_ = param1.category;
            _loc3_ = this.var_985.productContainer.firstProduct;
            if(_loc2_ == RoomObjectCategoryEnum.const_28)
            {
               this._roomEngine.addObjectFurniture(param1.roomId,param1.roomCategory,param1.objectId,_loc3_.productClassId,new Vector3d(param1.x,param1.y,0),new Vector3d(param1.direction,0,0),0,"");
            }
            else if(_loc2_ == RoomObjectCategoryEnum.const_26)
            {
               this._roomEngine.addObjectWallItem(param1.roomId,param1.roomCategory,param1.objectId,_loc3_.productClassId,new Vector3d(param1.x,param1.y,param1.z),new Vector3d(param1.direction * 45,0,0),0,"");
            }
            _loc4_ = this._roomEngine.getRoomObject(param1.roomId,param1.roomCategory,param1.objectId,param1.category) as IRoomObjectController;
            if(_loc4_)
            {
               _loc4_.getModelController().setNumber(RoomObjectVariableEnum.const_331,0.5);
            }
            this.resetObjectMover();
         }
      }
      
      private function resetObjectMover() : void
      {
         this.var_1210 = false;
         this._mainContainer.visible = true;
         this.var_1208 = null;
      }
      
      public function resetPlacedOfferData() : void
      {
         if(this.var_87 != null)
         {
            if(this.var_87.category == RoomObjectCategoryEnum.const_28)
            {
               this._roomEngine.disposeObjectFurniture(this.var_87.roomId,this.var_87.roomCategory,this.var_87.objectId);
            }
            else if(this.var_87.category == RoomObjectCategoryEnum.const_26)
            {
               this._roomEngine.disposeObjectWallItem(this.var_87.roomId,this.var_87.roomCategory,this.var_87.objectId);
            }
            else
            {
               this._roomEngine.deleteRoomObject(this.var_87.objectId,this.var_87.category);
            }
            this.var_87.dispose();
            this.var_87 = null;
         }
      }
      
      public function cancelFurniInMover() : void
      {
         if(this.var_985 != null)
         {
            this._roomEngine.cancelRoomObjectInsert();
            this.var_1210 = false;
            this.var_985 = null;
            this._mainContainer.visible = true;
         }
      }
      
      private function onItemAddedToInventory(param1:HabboInventoryItemAddedEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(this.var_87 && this.var_87.productClassId == param1.classId)
         {
            if(this.var_87.roomCategory == this._roomEngine.activeRoomCategory && this.var_87.roomId == this._roomEngine.activeRoomId)
            {
               _loc2_ = param1.stripId;
               _loc3_ = this.var_87.category;
               _loc4_ = this.var_87.wallLocation;
               _loc5_ = this.var_87.x;
               _loc6_ = this.var_87.y;
               _loc7_ = this.var_87.direction;
               this._communication.getHabboMainConnection(null).send(new PlaceObjectMessageComposer(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_));
               this.resetPlacedOfferData();
            }
         }
      }
   }
}