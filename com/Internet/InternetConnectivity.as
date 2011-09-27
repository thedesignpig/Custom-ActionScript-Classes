package com.Internet  {
	import flash.utils.Timer;
	import flash.net.URLLoader;
	import flash.events.HTTPStatusEvent;
	import flash.events.IOErrorEvent;
	import flash.net.URLRequest;
	import flash.events.TimerEvent;

	/*
	Checks for the Internet Connectivity and Stores it in bInternetConnection
	
	adishaswot@gmail.com
	2011 Sept 27
	
	*/
	
	public class InternetConnectivity {
		//Ping Response Timeout time
		public var pingTime:Number = 15000;//milliseconds
		//Ping Server
		public var pingServer:String='http://google.com';
		//Boolean : Internet Conncetivity
		public	var bInternetConnectivity:Boolean=false;
		public var urlLoader:URLLoader = new URLLoader();
		public var pingTimer:Timer = new Timer(pingTime);
		//Constructor
		public function InternetConnectivity() {
			//Timer for repeated ping
			
			pingTimer.addEventListener(TimerEvent.TIMER, pingTock);
			//Ping Url Loader
			
			urlLoader.addEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatus)
			urlLoader.addEventListener(IOErrorEvent.IO_ERROR, pingError);
			urlLoader.load(new URLRequest(pingServer));

		}
		
		
		//Init The Ping time
		public function init()
		{
			pingTimer.start();
			
		}
		
	//Response from the Ping Server
	private function httpStatus(e:HTTPStatusEvent)
	{
	//trace(e.status);
		switch(e.status)
		{
			case 200:
				bInternetConnectivity=true;
				break;
			
			case 0:
			default:
				bInternetConnectivity=false;
							
			}
	}

	//Request to Ping Server
			private function pingTock(e:TimerEvent):void
			{
				urlLoader.load(new URLRequest(pingServer));
				trace(bInternetConnectivity);
			}

			//Ping Error
			private function pingError(e:IOErrorEvent)
			{
					bInternetConnectivity=false;
										
			}



	}
	
}

