package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1945:int = 0;
      
      public static const const_1665:int = 1;
      
      public static const const_1554:int = 2;
      
      public static const const_2005:int = 3;
      
      public static const const_1951:int = 4;
      
      public static const const_1960:int = 5;
      
      public static const const_1666:int = 10;
      
      public static const const_2015:int = 11;
      
      public static const const_1823:int = 12;
      
      public static const const_1876:int = 13;
      
      public static const const_1988:int = 16;
      
      public static const const_2028:int = 17;
      
      public static const const_1812:int = 18;
      
      public static const const_1862:int = 19;
      
      public static const const_1851:int = 20;
      
      public static const const_1888:int = 22;
      
      public static const const_1964:int = 23;
      
      public static const const_1909:int = 24;
      
      public static const const_2007:int = 25;
      
      public static const const_1932:int = 26;
      
      public static const const_1955:int = 27;
      
      public static const const_1916:int = 28;
      
      public static const const_1877:int = 29;
      
      public static const const_1828:int = 100;
      
      public static const const_1996:int = 101;
      
      public static const const_1966:int = 102;
      
      public static const const_1840:int = 103;
      
      public static const const_1911:int = 104;
      
      public static const const_1939:int = 105;
      
      public static const const_1893:int = 106;
      
      public static const const_1926:int = 107;
      
      public static const const_1981:int = 108;
      
      public static const const_1881:int = 109;
      
      public static const const_2026:int = 110;
      
      public static const const_1943:int = 111;
      
      public static const const_1883:int = 112;
      
      public static const const_1937:int = 113;
      
      public static const const_1986:int = 114;
      
      public static const const_1844:int = 115;
      
      public static const const_1855:int = 116;
      
      public static const const_1922:int = 117;
      
      public static const const_1896:int = 118;
      
      public static const const_1901:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1665:
            case const_1666:
               return "banned";
            case const_1554:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
