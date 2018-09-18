#import "Number.h"

@implementation Number

-(id) init {
  self = [super init];

  if (self) {
    num = 0;
  }
  return self;
}

 -(void) setNumber: (int) n {
 num = n;
 }

-(BOOL) isEven {
if (num % 2 == 0) {
  return YES;
} else {
  return NO;
 }
}

-(BOOL) isPrime {
if (num % 2 == 0) {
  return YES;
}
for (int x = 2; x < num / 2; x = x + 1) {
  int f = num/x;
  if (num == f * f) {
    return NO;
  }
}
return YES;
}

-(int) largestDigit {
int biggest;
biggest = 0;

while (num > 10) {
  if (num % 10 > biggest) {
    biggest = num;
    num = num / 10;
    if (num > biggest && num < 10) {
      biggest = num;
    }
  }
}
return biggest;
}

-(int) sumOfDigits {
  int sum = 0;
  int add;
  while (num >= 1) {
    add = num % 10;
    sum = sum + add;
    num = num / 10;
  }
  return sum;
}


-(BOOL) isPerfectSquare {
for (int x = 1; x < num; x = x + 1) {
  if (x * x == num) {
    return YES;
  } else {
    return NO;
  }
 }
}


-(int) numberOfDigits {
int dig = 1;
while (num > 10) {
  num = num / 10;
  dig = dig + 1;
}
 return dig;
}

-(int) nearestPerfectSquare {
  int z;
  int pCounter;
  int nCounter;
  for (int x = num; x < 99999; x = x + 1) {
    for (int g = 1; g < num; g = g + 1) {
      if (g * g == x) {
      pCounter = x;
    }
  }
}
  for (int z = num; z > 0; z = z - 1) {
    for (int h = 1; h < num; h = h + 1) {
      if (h * h == z) {
      nCounter = z;
    }
  }
}
  if (pCounter - nCounter > nCounter - pCounter) {
    return pCounter;
  } else {
    return nCounter;
  }
}




@end
