//
//  iTryDictionary.m
//  iTry
//
//  Created by Nick Kopilovskii on 21.05.2018.
//  Copyright © 2018 Nick Kopilovskii. All rights reserved.
//

#import "iTryDictionary.h"
#import "iTryLogs.h"

@implementation NSDictionary (iTryDictionaryCreation)
//
- (instancetype _Nullable)tryInitWithObjects:(NSArray * _Nullable)objects forKeys:(NSArray <NSString *> * _Nullable)keys nonNull:(BOOL)nonNull {
  @try {
    return [self initWithObjects:objects forKeys:keys];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [self init] : nil;
  }
}


- (instancetype _Nullable)tryInitWithDictionary:(NSDictionary * _Nullable)otherDictionary nonNull:(BOOL)nonNull {
  @try {
    return [self initWithDictionary:otherDictionary];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [self init] : nil;
  }
}

- (instancetype _Nullable)tryInitWithDictionary:(NSDictionary * _Nullable)otherDictionary copyItems:(BOOL)flag nonNull:(BOOL)nonNull {
  @try {
    return [self initWithDictionary:otherDictionary copyItems:flag];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [self init] : nil;
  }
}

+ (instancetype)tryDictionaryWithObject:(id)object forKey:(NSString *)key nonNull:(BOOL)nonNull {
  @try {
    return [NSDictionary dictionaryWithObject:object forKey:key];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? @{}: nil;
  }
  
}

+ (instancetype)tryDictionaryWithObjects:(NSArray *)objects forKeys:(NSArray <NSString *> *)keys nonNull:(BOOL)nonNull {
  @try {
    return [NSDictionary dictionaryWithObjects:objects forKeys:keys];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? @{} : nil;
  }
}

+ (instancetype _Nullable)tryDictionaryWithDictionary:(NSDictionary * _Nullable)otherDictionary nonNull:(BOOL)nonNull {
  @try {
    return [NSDictionary dictionaryWithDictionary:otherDictionary];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? @{} : nil;
  }
}

@end




/****************  Mutable Dictionary  ****************/
@implementation NSMutableDictionary (iTryMutableDictionaryCreation)

- (instancetype _Nullable)tryInitWithObjects:(NSArray * _Nullable)objects forKeys:(NSArray <NSString *> * _Nullable)keys  nonNull:(BOOL)nonNull {
  @try {
    return [self initWithObjects:objects forKeys:keys];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [@{} mutableCopy] : nil;
  }
}

- (instancetype _Nullable)tryInitWithDictionary:(NSDictionary * _Nullable)dict  nonNull:(BOOL)nonNull {
  @try {
    return [self initWithDictionary:dict];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [@{} mutableCopy] : nil;
  }
}

- (instancetype _Nullable)tryInitWithDictionary:(NSDictionary * _Nullable)otherDictionary copyItems:(BOOL)flag nonNull:(BOOL)nonNull {
  @try {
    return [self initWithDictionary:otherDictionary copyItems:flag];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [@{} mutableCopy] : nil;
  }
}

+ (instancetype)tryDictionaryWithObject:(id)object forKey:(NSString *)key nonNull:(BOOL)nonNull {
  @try {
    return [NSMutableDictionary dictionaryWithObject:object forKey:key];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [@{} mutableCopy] : nil;
  }
}

+ (instancetype )tryDictionaryWithObjects:(NSArray *)objects forKeys:(NSArray <NSString *> *)keys nonNull:(BOOL)nonNull {
  @try {
    return [NSMutableDictionary dictionaryWithObjects:objects forKeys:keys];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [@{} mutableCopy] : nil;
  }
}

+ (instancetype)tryDictionaryWithDictionary:(NSDictionary *)dict nonNull:(BOOL)nonNull {
  @try {
    return [NSMutableDictionary dictionaryWithDictionary:dict];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
    return (nonNull)? [@{} mutableCopy] : nil;
  }
}

@end



@implementation NSMutableDictionary (iTryExtendedMutableDictionary)

- (id)tryObjectForKey:(NSString *)key {
  @try {
    return [self objectForKey:key];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
//  return nil;
}

- (void)trySetObject:(id)object forKey:(NSString *)key {
  @try {
    [self setObject:object forKey:key];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

- (void)tryRemoveObjectForKey:(NSString *)key {
  @try {
    [self removeObjectForKey:key];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

- (void)tryRemoveObjectsForKeys:(NSArray *)keyArray {
  @try {
    [self removeObjectsForKeys:keyArray];
  } @catch (NSException *exception) {
    tryLogExaption(exception);
  }
}

@end
