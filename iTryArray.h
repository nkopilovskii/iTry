//
//  iTryArray.h
//  iTry
//
//  Created by Nick Kopilovskii on 21.05.2018.
//  Copyright © 2018 Nick Kopilovskii. All rights reserved.
//

#import <Foundation/Foundation.h>

/*-------------  Immutable Array  -------------*/
@interface NSArray (iTryArrayCreation)

- (instancetype _Nullable)tryInitWithArray:(NSArray * _Nullable)array nonNull:(BOOL)nonNull;
- (instancetype _Nullable)tryInitWithArray:(NSArray *  _Nullable)array copyItems:(BOOL)flag nonNull:(BOOL)nonNull;

+ (instancetype _Nullable)tryArrayWithObject:(id _Nullable)anObject nonNull:(BOOL)nonNull;
+ (instancetype _Nullable)tryArrayWithArray:(NSArray * _Nullable)array nonNull:(BOOL)nonNull;

@end


@interface NSArray (iTryExtendedArray)

- (id _Nullable)tryObjectAtIndex:(NSUInteger)index;

- (NSUInteger)tryIndexOfObject:(id _Nullable)anObject inRange:(NSRange)range;
- (NSUInteger)tryIndexOfObjectIdenticalTo:(id _Nullable)anObject inRange:(NSRange)range;

@end


/*-------------  Mutable Array  -------------*/
@interface NSMutableArray (iTryMutableArrayCreation)

- (instancetype _Nullable)tryInitWithArray:(NSArray * _Nullable)array nonNull:(BOOL)nonNull;
- (instancetype _Nullable)tryInitWithArray:(NSArray *  _Nullable)array copyItems:(BOOL)flag nonNull:(BOOL)nonNull;

+ (instancetype _Nullable)tryArrayWithObject:(id _Nullable)anObject nonNull:(BOOL)nonNull;
+ (instancetype _Nullable)tryArrayWithArray:(NSArray * _Nullable)array nonNull:(BOOL)nonNull;

@end


@interface NSMutableArray (iTryExtendedMutableArray)

- (id _Nullable)tryObjectAtIndex:(NSUInteger)index;

- (NSUInteger)tryIndexOfObject:(id _Nullable)anObject inRange:(NSRange)range;
- (NSUInteger)tryIndexOfObjectIdenticalTo:(id _Nullable)anObject inRange:(NSRange)range;

- (void)tryAddObject:(id _Nullable)anObject;
- (void)tryInsertObject:(id _Nullable)anObject atIndex:(NSUInteger)index;
- (void)tryRemoveObjectAtIndex:(NSUInteger)index;
- (void)tryReplaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;
- (void)tryRemoveObject:(id _Nullable)anObject inRange:(NSRange)range;
- (void)tryRemoveObjectIdenticalTo:(id _Nullable)anObject inRange:(NSRange)range;

- (void)tryRemoveObjectsInRange:(NSRange)range;
- (void)tryReplaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *  _Nullable)otherArray range:(NSRange)otherRange;
- (void)tryReplaceObjectsInRange:(NSRange)range withObjectsFromArray:(NSArray *  _Nullable)otherArray;

- (void)tryInsertObjects:(NSArray *  _Nullable)objects atIndexes:(NSIndexSet *  _Nullable)indexes;
- (void)tryRemoveObjectsAtIndexes:(NSIndexSet *  _Nullable)indexes;
- (void)tryReplaceObjectsAtIndexes:(NSIndexSet *  _Nullable)indexes withObjects:(NSArray *  _Nullable)objects;

@end
