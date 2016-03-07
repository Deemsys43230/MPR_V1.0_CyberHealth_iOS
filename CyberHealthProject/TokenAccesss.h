//
//  TokenAccesss.h
// CyberHealth
//
//  Created by Uday JC on 23/06/2015.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+NullReplacement.h"
#import"SBJSON.h"
@interface TokenAccesss : NSObject<NSURLSessionDelegate>
{
    BOOL isConnect;
    NSString *Headername;
    NSString* imageURL;
}
/*===Variables===*/
+(TokenAccesss*)sharedInstance;
-(NSString*)DBurl;


@property(nonatomic,retain)NSString *client_id;
@property(nonatomic,retain)NSString *client_pwd;

/*===Access Token methods===*/

-(NSString *)GetAccessTockenAtFirstTime:(NSString*)username pwd:(NSString *)pwd;
-(NSString*)GetAccessTockenAtSessionExpiredTime;
-(NSString*)submitvalues;
-(NSString *)ConnectWithWebServerPOSTMethod:(NSString *)post URL:(NSURL *)url;
-(NSDictionary *)ConnectWithWebServerGETMethod:(NSString *)url;
-(NSDictionary*)GetTokens:(NSString *)url;

/*===Token Flow methods===*/
-(NSMutableDictionary *)CheckFlowInPOSTWithURL:(NSURL*)url andValues:(NSString*)values;
-(NSMutableDictionary *)CheckFlowInGETWithURL:(NSString *)url;



@end
