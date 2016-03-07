//
//  TokenAccesss.m
//  ElectronicHealthcareRecord
//
//  Created by DeemsysInc on 19/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "TokenAccesss.h"
#import "Reachability.h"
static TokenAccesss * appInstance;
@implementation TokenAccesss
+(TokenAccesss*)sharedInstance {
	if (!appInstance) {
		appInstance = [[TokenAccesss alloc] init];
        
	}
	return appInstance;
}
-(NSString*)DBurl
{
////        Cloud Deployment
         NSString* link2=@"http://216.194.167.74:8082/EHR/";
//    
////      Development
////        NSString* link=@"http://192.168.1.71:8081/EHR/";
//    
////    Testing
////    NSString* link=@"http://192.168.1.71:8082/EHR/";
//    
//    self.client_id=@"restapp";
//    self.client_pwd=@"restapp";
//    
//    
    return link2;
    
}

-(NSString*)GetAccessTockenAtFirstTime:(NSString*)username pwd:(NSString *)pwd
{
////   Cloud Deployment
    NSString* link2=@"http://216.194.167.74:8082/EHR/";
//    
////    Development
////    NSString* link2=@"http://192.168.1.71:8081/EHR/";
//    
////    Testing
////    NSString*   link2=@"http://192.168.1.71:8082/EHR/";
//    [self DBurl];
//    NSString *URL=[NSString stringWithFormat:@"%@oauth/token?grant_type=password&client_id=%@&client_secret=%@&username=%@&password=%@",link2,self.client_id,self.client_pwd,username,pwd];
//    
//    NSDictionary *Datas=[self GetTokens:URL];
//    Datas=[Datas dictionaryByReplacingNullsWithBlanks];
//    NSLog(@"Datas %@",Datas);
//    if (([Datas count]>0)&&([Datas count]!=2))
//    {
//        [[NSUserDefaults standardUserDefaults]setValue:[Datas valueForKey:@"access_token"] forKey:@"access_token"] ;
//        [[NSUserDefaults standardUserDefaults]setValue:[Datas valueForKey:@"refresh_token"] forKey:@"refresh_token"] ;
//        [[NSUserDefaults standardUserDefaults]synchronize];
//        return @"Success";
//    }
//    else if([Datas count]==2)
//    {
//        return [Datas valueForKey:@"error_description"];
//    }
    return @"Failure";
}
-(NSString*)GetAccessTockenAtSessionExpiredTime
{
////    Cloud Deployment
//    NSString* link2=@"http://216.194.167.74:8082/EHR/";
//
// 
//    //Development
////    NSString* link2=@"http://192.168.1.71:8081/EHR/";
//    
//    //Testing
//    //NSString* link2=@"http://192.168.1.71:8082/EHR/";
//    [self DBurl];
//    NSString *URL=[NSString stringWithFormat:@"%@oauth/token?grant_type=refresh_token&client_id=%@&client_secret=%@&refresh_token=%@",link2,self.client_id,self.client_pwd,[[NSUserDefaults standardUserDefaults]valueForKey:@"refresh_token"]];
//    NSDictionary *Datas=[self GetTokens:URL];
//    Datas=[Datas dictionaryByReplacingNullsWithBlanks];
//    NSLog(@"Refresh Datas %@",Datas);
//    
//    
//    if (([Datas count]>0)&&([Datas count]!=2)) {
//        [[NSUserDefaults standardUserDefaults]setValue:[Datas valueForKey:@"access_token"] forKey:@"access_token"] ;
//        [[NSUserDefaults standardUserDefaults]setValue:[Datas valueForKey:@"refresh_token"] forKey:@"refresh_token"] ;
//        [[NSUserDefaults standardUserDefaults]synchronize];
//        return @"Success";
//    }
//    else if([Datas count]==2)
//    {
//        return [Datas valueForKey:@"error"];
//    }
//    
    return @"Failure";
}

-(NSString*)submitvalues
{
    
    
    Reachability* wifiReach = [Reachability reachabilityWithHostName: @"www.apple.com"];
	NetworkStatus netStatus = [wifiReach currentReachabilityStatus];
    
	switch (netStatus)
	{
		case NotReachable:
		{
			isConnect=NO;
			//NSLog(@"Access Not Available");
			break;
		}
            
		case ReachableViaWWAN:
		{
			isConnect=YES;
			//NSLog(@"Reachable WWAN");
			break;
		}
		case ReachableViaWiFi:
		{
			isConnect=YES;
			//NSLog(@"Reachable WiFi");
			break;
		}
	}
	
	
    
    if(isConnect)
    {
        
        return  @"Success";
        
    }
    
    else
    {
        
        return @"Failure";
    }
    
    
}

-(NSString *)ConnectWithWebServerPOSTMethod:(NSString *)post URL:(NSURL *)url
{
    NSLog(@"url %@",url);
    //       NSLog(@"post %@",post);
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:url];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    
    //when we user https, we need to allow any HTTPS cerificates, so add the one line code,to tell teh NSURLRequest to accept any https certificate, i'm not sure //about the security aspects
    
    // NSLog(@"mutable request %@",request);
    NSError *error;
    NSURLResponse *response;
    NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    //    NSLog(@"urlData %@",urlData);
    NSString *data=[[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
    
    //    NSLog(@"data %@",data);
    
    
    data=[data stringByReplacingOccurrencesOfString:@"<null>" withString:@" "];
    
    return data;
    
}
-(NSDictionary*)ConnectWithWebServerGETMethod:(NSString *)url
{
    NSLog(@"URL %@",url);
    url=[url stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
    NSMutableURLRequest *request =[[NSMutableURLRequest alloc]initWithURL:[NSURL URLWithString:url]];
    NSData *returnData = [ NSURLConnection sendSynchronousRequest:request returningResponse: nil error: nil ];
    
    
    NSString *returnString = [[NSString alloc]initWithData:returnData encoding:NSUTF8StringEncoding];
    
    // NSLog(@"receiveddatas returnData %@",returnData);
    NSError *err = nil;
    
    NSDictionary *receiveddatas = [NSJSONSerialization JSONObjectWithData:[returnString dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableContainers error:&err];
    
    receiveddatas=[receiveddatas dictionaryByReplacingNullsWithBlanks];
    
    NSLog(@"receiveddatas response %@",receiveddatas);
    return receiveddatas;
    
}
-(NSDictionary*)GetTokens:(NSString *)url
{
    //    NSLog(@"request url %@",url);
    NSMutableURLRequest *request =[[NSMutableURLRequest alloc]initWithURL:[NSURL URLWithString:url]];
    NSData *returnData = [ NSURLConnection sendSynchronousRequest:request returningResponse: nil error: nil ];
    
    
    NSString *returnString = [[NSString alloc]initWithData:returnData encoding:NSUTF8StringEncoding];
    NSError *err = nil;
    
    NSDictionary *search = [NSJSONSerialization JSONObjectWithData:[returnString dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableContainers error:&err];
    
    search=[search dictionaryByReplacingNullsWithBlanks];
    // NSLog(@"search response %@",search);
    return search;
}
-(NSString *)ReplaceNewAccessToken:(NSString*)String
{
    
    
    NSLog(@"Given string %@", String);
    NSString *valueString=String;
    NSRange range = [valueString rangeOfString:@"access_token="];
    if (range.location == NSNotFound) {
        NSLog(@"The string  does not contain 'access_token=' as a substring");
    }
    else {
        //        NSLog(@"Found the range of the substring at (%d, %d,)", range.location, range.length+36);
        valueString= [valueString stringByReplacingCharactersInRange:NSMakeRange(range.location, range.length+36) withString:[NSString stringWithFormat:@"access_token=%@",[[NSUserDefaults standardUserDefaults]valueForKey:@"access_token"]]];
        NSLog(@"replaced string %@", valueString);
    }
    return valueString;
}
-(NSMutableDictionary *)CheckFlowInPOSTWithURL:(NSURL*)url andValues:(NSString*)values
{
    NSMutableDictionary *returnData=[NSMutableDictionary new];
   if ([[self submitvalues]isEqualToString:@"Success"])
   {
    
        SBJSON *json = [SBJSON new];
        NSString *response =[self ConnectWithWebServerPOSTMethod:values URL:url];
        NSMutableDictionary *parsedvalue = [[json objectWithString:response error:nil] mutableCopy];
        NSLog(@"parsedvalue%@",parsedvalue);
        if ([[parsedvalue valueForKey:@"error"] isEqualToString:@"invalid_token"])     //Session Expired
        {
            NSString*AccesstokenResponse=[self GetAccessTockenAtSessionExpiredTime];
            
            if (([AccesstokenResponse isEqualToString:@"invalid_grant"])||(![AccesstokenResponse  isEqualToString:@"Success"]))
            {
                [returnData setValue:@"Can't reach server." forKey:@"serverStatus"];
                return returnData;
            }
            else if ([AccesstokenResponse isEqualToString:@"Success"])
            {
                
                response =[self ConnectWithWebServerPOSTMethod:[self ReplaceNewAccessToken:values] URL:url];
                parsedvalue = [[json objectWithString:response error:nil]mutableCopy];
                [parsedvalue setValue:@"Success" forKey:@"serverStatus"];
                return [parsedvalue mutableCopy];
                
            }
            
        }
        else  if ([[parsedvalue valueForKey:@"error"] length]>0)
        {
            [returnData setValue:@"Can't reach server." forKey:@"serverStatus"];
            return returnData;
        }
        else  if (parsedvalue==nil)
        {
            [returnData setValue:@"Can't reach server." forKey:@"serverStatus"];
            return returnData;
        }
        else
        {
            [parsedvalue setValue:@"Success" forKey:@"serverStatus"];
            return [parsedvalue mutableCopy];
        }
    }
    else
    {
        
        [returnData setValue:@"No network connection." forKey:@"serverStatus"];
        return returnData;
    }
    [returnData setValue:@"Can't reach server." forKey:@"serverStatus"];
    return returnData;
}
-(NSMutableDictionary *)CheckFlowInGETWithURL:(NSString *)url
{
    NSMutableDictionary *returnData=[NSMutableDictionary new];
    if ([[self submitvalues]isEqualToString:@"Success"])
    {
    
        NSMutableDictionary *parsedvalue  =[[self ConnectWithWebServerGETMethod:url] mutableCopy];
        NSLog(@"parsedvalue%@",parsedvalue);
        if ([[parsedvalue valueForKey:@"error"] isEqualToString:@"invalid_token"])     //Session Expired
        {
            NSString*AccesstokenResponse=[self GetAccessTockenAtSessionExpiredTime];
            
            if (([AccesstokenResponse isEqualToString:@"invalid_grant"])||(![AccesstokenResponse isEqualToString:@"Success"]))
            {
                [returnData setValue:@"Can't reach server." forKey:@"serverStatus"];
                return returnData;
            }
            else if ([AccesstokenResponse isEqualToString:@"Success"])
            {
                
                parsedvalue  =[[self ConnectWithWebServerGETMethod:[self ReplaceNewAccessToken:url]] mutableCopy];
                [parsedvalue setValue:@"Success" forKey:@"serverStatus"];
                return [parsedvalue mutableCopy];
                
            }
            
        }
        else  if ([[parsedvalue valueForKey:@"error"] length]>0)
        {
            [returnData setValue:@"Can't reach server." forKey:@"serverStatus"];
            return returnData;
        }
        else  if (parsedvalue==nil)
        {
            [returnData setValue:@"Can't reach server." forKey:@"serverStatus"];
            return returnData;
        }
        else
        {
            [parsedvalue setValue:@"Success" forKey:@"serverStatus"];
            return [parsedvalue mutableCopy];
        }
    }
    else
    {
        
        [returnData setValue:@"No network connection." forKey:@"serverStatus"];
        return returnData;
    }
    [returnData setValue:@"Can't reach server." forKey:@"serverStatus"];
    return returnData;
}
@end
