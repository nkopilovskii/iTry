//
//  iTryLogs.m
//  iTry
//
//  Created by Nick Kopilovskii on 21.05.2018.
//  Copyright © 2018 Nick Kopilovskii. All rights reserved.
//


#import "iTryLogs.h"

void tryLogExaption(NSException * _Nullable exception) {
  if (!exception)
    return;
  
  NSLog(@"\n/*** \n    EXCEPTION! \n    Name: %@\n    Reason: %@\n***/", exception.name, exception.reason);
}
