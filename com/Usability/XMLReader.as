package com.Usability {
	//Reads XML datas With or Without Namespaces
	
	public class XMLReader {
		//===== Variables =====
		public var sourceURL:String;
		
		//check to See if the Source if a Feed or Plain XML
		public var isFeed:Boolean;
		
		

		public function XMLReader(_source:String) {
			// constructor code
			sourceURL = _source;
			
			
			
		}

	}
	
}


/*
//------------------------FEED -------------

feeds.visible=false;
feeds.feedError.visible = false;
feeds.refreshClip.visible = false;

//feeds.feedContainer.visible=false;



btns.addEventListener(MouseEvent.CLICK, btnsClicked);

function btnsClicked(e:MouseEvent)
{
	//trace(e.target.name);
	switch(e.target.name)
	{
		case 'feedBtn':
		
			btns.visible=false;
			feeds.visible=true;
			getFeed();
			
			
			//User Tracking
			if(bInternetConnectivity)
			{
				
			trackingVar.type = 0;
			userTrackServerURL.data = trackingVar;
			trackingLoader.load(userTrackServerURL);		
			
			}
			
			break;
		case 'browseBtn':
			browser.visible=true;
			
			
			//User Tracking
			if(bInternetConnectivity)
			{
				
			trackingVar.type = 1;
			userTrackServerURL.data = trackingVar;
			trackingLoader.load(userTrackServerURL);		
			
			}
			break; 
		
	}
	
}


feeds.closeBtn.addEventListener(MouseEvent.CLICK, closePanel);


feeds.refreshBtn.addEventListener(MouseEvent.CLICK, getFeed)
//getFeed()
function getFeed(e:MouseEvent=null)
{
	removeAllFeeds();
	
	//User Tracking
			if(bInternetConnectivity)
			{
				
			trackingVar.type = 0;
			userTrackServerURL.data = trackingVar;
			trackingLoader.load(userTrackServerURL);		
			
			}
			
			
	
	
	if(!bInternetConnectivity)
			feeds.feedError.visible = true;
			
	else
	{
			
		//Load the Feed	
		var feedRequest:URLRequest = new URLRequest(feedServer[0]);
		//trace(feedRequest.url);
		var feedLoader:URLLoader = new URLLoader()
		feedLoader.addEventListener(Event.COMPLETE, feedLoadingCompleted)
		feedLoader.addEventListener(IOErrorEvent.IO_ERROR, feedLoadingError);
		feedLoader.addEventListener(ProgressEvent.PROGRESS, feedLoading);
		
		feedLoader.load(feedRequest);
		
		
	
		
	}
		
		
}

//FeedLoading Error
function feedLoadingError(E:IOErrorEvent)
{
		//If Loading Fails
		feeds.feedError.visible = true;
		feeds.refreshBtn.visible = false;
		feeds.refreshClip.visible=true;
		//feeds.refreshClip.play();
}

//feedLoading
function feedLoading(e:ProgressEvent)
{
		//trace(e.bytesLoaded);
		feeds.feedError.visible = false;
		feeds.refreshBtn.visible = false;
		feeds.refreshClip.visible=true;
}

//feedLoadingCompleted


var rdf:Namespace = new Namespace('rdf','http://purl.org/rss/1.0/');
function feedLoadingCompleted(e:Event)
{
	//trace('Loading Complete');
	feeds.feedError.visible = false;
	feeds.refreshBtn.visible = true;
	feeds.refreshClip.visible=false;
	
	feeds.feedContainer.visible=true;
	feeds.feedContainer.play();
	
	//trace(e.currentTarget.data);

	var rawData:XML = XML(e.currentTarget.data);
	rawData.addNamespace(rdf);
	var dataItems:XMLList = XMLList(rawData.rdf::item);
	
	
	
	//trace(rawData.rdf::item[0].rdf::title);
	//Mining Datas
	var prevy;
	for(var i=0; i<maxNoOfFeed; i++)
	{
			var myfeed:FeedItem = new FeedItem();
			myfeed.link=String(rawData.rdf::item[i].rdf::link);
			myfeed.feedTitle.text =String(rawData.rdf::item[i].rdf::title);
			myfeed.feedDetails.text=String(rawData.rdf::item[i].rdf::description);
			myfeed.name="feedItem"+i;
			feeds.feedContainer.addChild(myfeed);
			
			//if Odd 1 3 5
			if(i%2)
			{
				myfeed.x= myfeed.width+10;
				myfeed.y = prevy;
				continue;
			}
			prevy = myfeed.y =i*(myfeed.height -40);
			
	}
	
}



function removeAllFeeds()
{
	//trace(feeds.feedContainer.numChildren);
	for(var i =0; i<feeds.feedContainer.numChildren; i++)
	{
		feeds.feedContainer.removeChildAt(i);
		//trace(feeds.feedContainer.numChildren);
	}
}
*/