package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_937:int = 500;
      
      private static var var_867:Vector3d = new Vector3d();
       
      
      private var var_479:Vector3d;
      
      private var var_93:Vector3d;
      
      private var var_1610:int = 0;
      
      private var var_2169:int;
      
      private var var_1072:int = 500;
      
      public function MovingObjectLogic()
      {
         this.var_479 = new Vector3d();
         this.var_93 = new Vector3d();
         super();
      }
      
      protected function get lastUpdateTime() : int
      {
         return this.var_1610;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_93 = null;
         this.var_479 = null;
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 <= 0)
         {
            param1 = 1;
         }
         this.var_1072 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               this.var_93.assign(param1.loc);
               _loc3_ = _loc2_.targetLoc;
               this.var_2169 = this.var_1610;
               this.var_479.assign(_loc3_);
               this.var_479.sub(this.var_93);
            }
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = 0;
         if(this.var_479.length > 0)
         {
            _loc2_ = param1 - this.var_2169;
            if(_loc2_ > this.var_1072)
            {
               _loc2_ = this.var_1072;
            }
            var_867.assign(this.var_479);
            var_867.mul(_loc2_ / Number(this.var_1072));
            var_867.add(this.var_93);
            if(object != null)
            {
               object.setLocation(var_867);
            }
            if(_loc2_ == this.var_1072)
            {
               this.var_479.x = 0;
               this.var_479.y = 0;
               this.var_479.z = 0;
            }
         }
         this.var_1610 = param1;
      }
   }
}
