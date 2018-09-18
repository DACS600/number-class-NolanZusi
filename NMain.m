#import <Foundation/Foundation.h>

#import "Number.h"


int main(int argc, const char * argv[]) {
@autoreleasepool {

NSLog(@"Starting the main method.");

int yourNumber = 273;

Number *aNumber = [[Number alloc] init];
[aNumber setNumber: yourNumber];

NSLog (@"Your number is: %i.", yourNumber);

if ([aNumber isEven]) {
  NSLog(@"The number is even.");
} else {
  NSLog(@"The number is odd.");
}

if ([aNumber isPrime]) {
  NSLog(@"The number is prime.");
} else {
  NSLog(@"The number is not prime.");
}

int sumD = [aNumber sumOfDigits];
NSLog(@"The sum of digits is %i.", sumD);

int nD = [aNumber numberOfDigits];
NSLog(@"The number of digits is %i.", nD);

int ld = [aNumber largestDigit];
NSLog(@"The largest digit is %i.", ld);

if ([aNumber isPerfectSquare]) {
  NSLog(@"The number is a perfect square.");
} else {
    NSLog(@"The number is not a perfect square.");
}

int nPS = ([aNumber nearestPerfectSquare]);
NSLog (@"The nearest perfect square is %i.", nPS);

}
return 0;
}
