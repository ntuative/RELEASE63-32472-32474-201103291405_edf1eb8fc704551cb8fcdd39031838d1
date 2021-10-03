package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_977:BigInteger;
      
      private var var_2250:BigInteger;
      
      private var var_1949:BigInteger;
      
      private var var_2730:BigInteger;
      
      private var var_1504:BigInteger;
      
      private var var_1948:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1504 = param1;
         this.var_1948 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1504.toString() + ",generator: " + this.var_1948.toString() + ",secret: " + param1);
         this.var_977 = new BigInteger();
         this.var_977.fromRadix(param1,param2);
         this.var_2250 = this.var_1948.modPow(this.var_977,this.var_1504);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1949 = new BigInteger();
         this.var_1949.fromRadix(param1,param2);
         this.var_2730 = this.var_1949.modPow(this.var_977,this.var_1504);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2250.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2730.toRadix(param1);
      }
   }
}
