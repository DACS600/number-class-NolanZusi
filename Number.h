#import <Foundation/Foundation.h>

@interface Number : NSObject {
int num;
}

-(void) setNumber: (int) n;
-(BOOL) isEven;
-(BOOL) isPrime;
-(int) sumOfDigits;
-(int) numberOfDigits;
-(int) largestDigit;
-(BOOL) isPerfectSquare;
-(int) nearestPerfectSquare;


@end
