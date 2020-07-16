//
//  main.m
//  NewAppSample
//
//

#import <Cocoa/Cocoa.h>
#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
    }
    
    NSString* path = [[NSBundle mainBundle] pathForResource:@"alternative" ofType:@"scpt"];
    //    NSString* path = [[NSBundle mainBundle] pathForResource:@"main" ofType:@"scpt"];
    NSURL* url = [NSURL fileURLWithPath:path];NSDictionary* errors = [NSDictionary dictionary];
    NSAppleScript* appleScript = [[NSAppleScript alloc] initWithContentsOfURL:url error:&errors];
    [appleScript executeAndReturnError:nil];
    
    return 0;
}
