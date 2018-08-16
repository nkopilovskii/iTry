//
//  iTryArray.m
//  iTry
//
//  Created by Nick Kopilovskii on 21.05.2018.
//  Copyright © 2018 Nick Kopilovskii. All rights reserved.
//

#import "iTryArray.h"
#import "iTryLogs.h"

/*-------------  Immutable Array  -------------*/
@implementation NSArray (iTryArrayCreation)

- (instancetype)tryInitWithArray:(NSArray *)array nonNull:(BOOL)nonNull {
  @try {
    return [self initWithArray:array];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [self init] : nil;
  }
}

- (instancetype)tryInitWithArray:(NSArray * )array copyItems:(BOOL)flag nonNull:(BOOL)nonNull {
  @try {
    return [self initWithArray:array copyItems:flag];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [self init] : nil;
  }
}

+ (instancetype)tryArrayWithObject:(id)anObject nonNull:(BOOL)nonNull {
  @try {
    return [NSArray arrayWithObject:anObject];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? @[] : nil;
  }
}

+ (instancetype)tryArrayWithArray:(NSArray *)array nonNull:(BOOL)nonNull {
  @try {
    return [NSArray arrayWithArray:array];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? @[] : nil;
  }
}

@end


@implementation NSArray (iTryExtendedArray)

- (id)tryObjectAtIndex:(NSUInteger)index {
  @try {
    return [self objectAtIndex:index];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

- (NSUInteger)tryIndexOfObject:(id)anObject inRange:(NSRange)range {
  @try {
    return [self indexOfObject:anObject inRange:range];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return NSNotFound;
  }
}

- (NSUInteger)tryIndexOfObjectIdenticalTo:(id)anObject inRange:(NSRange)range {
  @try {
    return [self indexOfObjectIdenticalTo:anObject inRange:range];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return NSNotFound;
  }
}

@end

/*-------------  Mutable Array  -------------*/
@implementation NSMutableArray (iTryMutableArrayCreation)

- (instancetype)tryInitWithArray:(NSArray *)array nonNull:(BOOL)nonNull {
  @try {
    return [self initWithArray:array];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [self init] : nil;
  }
}

- (instancetype)tryInitWithArray:(NSArray * )array copyItems:(BOOL)flag nonNull:(BOOL)nonNull {
  @try {
    return [self initWithArray:array copyItems:flag];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [self init] : nil;
  }
}

+ (instancetype)tryArrayWithObject:(id)anObject nonNull:(BOOL)nonNull {
  @try {
    return [NSMutableArray arrayWithObject:anObject];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [NSMutableArray array] : nil;
  }
}

+ (instancetype)tryArrayWithArray:(NSArray *)array nonNull:(BOOL)nonNull {
  @try {
    return [NSMutableArray arrayWithArray:array];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [NSMutableArray array] : nil;
  }
}

@end


@implementation NSMutableArray (iTryExtendedMutableArray)

- (id)tryObjectAtIndex:(NSUInteger)index {
  @try {
    return [self objectAtIndex:index];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

- (NSUInteger)tryIndexOfObject:(id)anObject inRange:(NSRange)range {
  @try {
    return [self indexOfObject:anObject inRange:range];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return NSNotFound;
  }
}

- (NSUInteger)tryIndexOfObjectIdenticalTo:(id)anObject inRange:(NSRange)range {
  @try {
    return [self indexOfObjectIdenticalTo:anObject inRange:range];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return NSNotFound;
  }
}

- (void)tryAddObject:(id)anObject {
  NSLog(@"");
  @try {
    [self addObject:anObject];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

- (void)tryInsertObject:(id)anObject atIndex:(NSUInteger)index {
  @try {
    [self insertObject:anObject atIndex:index];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

- (void)tryRemoveObjectAtIndex:(NSUInteger)index {
  @try {
    [self removeObjectAtIndex:index];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

- (void)tryReplaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject {
  @try {
    [self replaceObjectAtIndex:index withObject:anObject];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

- (void)tryRemoveObject:(id)anObject inRange:(NSRange)range {
  @try {
    [self removeObject:anObject inRange:range];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}
- (void)tryRemoveObjectIdenticalTo:(id)anObject inRange:(NSRange)range {
  @try {
    [self removeObjectIdenticalTo:anObject inRange:range];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

- (void)tryRemoveObjectsInRange:(NSRange)range {
  @try {
    [self removeObjectsInRange:range];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

- (void)tryReplaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray range:(NSRange)otherRange {
  @try {
    [self replaceObjectsInRange:range withObjectsFromArray:otherArray range:otherRange];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

- (void)tryReplaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *)otherArray {
  @try {
    [self replaceObjectsInRange:range withObjectsFromArray:otherArray];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

- (void)tryInsertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes {
  @try {
    [self insertObjects:objects atIndexes:indexes];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

- (void)tryRemoveObjectsAtIndexes:(NSIndexSet *)indexes {
  @try {
    [self removeObjectsAtIndexes:indexes];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}
- (void)tryReplaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray *)objects {
  @try {
    [self tryReplaceObjectsAtIndexes:indexes withObjects:objects];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

@end
