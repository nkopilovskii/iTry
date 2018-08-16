//
//  iTryDictionary.h
//  iTry
//
//  Created by Nick Kopilovskii on 21.05.2018.
//  Copyright © 2018 Nick Kopilovskii. All rights reserved.
//

///
///
/// These cathegories wrap standard NSDictionary & NSMutableDictionary
/// initialization methods using exception handling
/// to avoid crashing program in runtime
///
///
///

#import <Foundation/Foundation.h>

/*-------------  Immutable Dictionary  -------------*/
@interface NSDictionary (iTryDictionaryCreation)

- (instancetype _Nullable)tryInitWithObjects:(NSArray * _Nullable)objects forKeys:(NSArray <NSString *> * _Nullable)keys nonNull:(BOOL)nonNull;
- (instancetype _Nullable)tryInitWithDictionary:(NSDictionary * _Nullable)otherDictionary nonNull:(BOOL)nonNull;
- (instancetype _Nullable)tryInitWithDictionary:(NSDictionary * _Nullable)otherDictionary copyItems:(BOOL)flag nonNull:(BOOL)nonNull;

+ (instancetype _Nullable)tryDictionaryWithObject:(id _Nullable)object forKey:(NSString * _Nullable)key nonNull:(BOOL)nonNull;
+ (instancetype _Nullable)tryDictionaryWithObjects:(NSArray * _Nullable)objects forKeys:(NSArray <NSString *> * _Nullable)keys nonNull:(BOOL)nonNull;
+ (instancetype _Nullable)tryDictionaryWithDictionary:(NSDictionary * _Nullable)otherDictionary nonNull:(BOOL)nonNull;

@end


/*-------------  Mutable Dictionary  -------------*/
@interface NSMutableDictionary (iTryMutableDictionaryCreation)

- (instancetype _Nullable)tryInitWithObjects:(NSArray * _Nullable)objects forKeys:(NSArray <NSString *> * _Nullable)keys nonNull:(BOOL)nonNull;
- (instancetype _Nullable)tryInitWithDictionary:(NSDictionary * _Nullable)otherDictionary nonNull:(BOOL)nonNull;
- (instancetype _Nullable)tryInitWithDictionary:(NSDictionary * _Nullable)otherDictionary copyItems:(BOOL)flag nonNull:(BOOL)nonNull;

+ (instancetype _Nullable)tryDictionaryWithObject:(id _Nullable)object forKey:(NSString * _Nullable)key nonNull:(BOOL)nonNull;
+ (instancetype _Nullable)tryDictionaryWithObjects:(NSArray * _Nullable)objects forKeys:(NSArray <NSString *> * _Nullable)keys nonNull:(BOOL)nonNull;
+ (instancetype _Nullable)tryDictionaryWithDictionary:(NSDictionary * _Nullable)otherDictionary nonNull:(BOOL)nonNull;

@end



@interface NSMutableDictionary (iTryExtendedMutableDictionary)

- (id _Nullable)tryObjectForKey:(NSString * _Nullable)key;

- (void)trySetObject:(id _Nullable)object forKey:(NSString* _Nullable)key;

- (void)tryRemoveObjectForKey:(NSString * _Nullable)key;
- (void)tryRemoveObjectsForKeys:(NSArray * _Nullable)keyArray;

@end

