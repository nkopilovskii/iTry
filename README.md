# iTry

## Description 
In Objective-C, when dealing with classes that implement data structures (`NSSet`, `NSArray`, `NSDictionary`), it often has to deal with situations when an unsuitable parameter of the method (transfer of an empty object, going beyond a range of values, etc.) leads to crash.

In the process of working with collections of objects (`NSSet`, `NSArray`, `NSDictionary`) in Objective-C often have to deal with situations when an unsuitable parameter of the method (transfer of an empty object, going beyond a range of values, etc.) leads to crash.

Especially this problem is relevant in projects with dynamically generated data or in client-server applications, in which there is no guarantee that the transmitted parameter will have a correct value.

The simplest solution is to check these parameters before calling the method (using ```if-else``` or ```@try-@catch```). This avoids crashing the program in potentially "dangerous" places, but in turn leads to code repetition and reduces its readability.

This library is a set of extensions to the standard Objective-C Foundation object collection classes.


## Interface
Extensions are a wrapper over standard methods using the `@try-@catch` exception catch mechanism. The names of these methods duplicate the names of the standard methods with the addition of the prefix `try`.
Object initialization methods have `nonnull` parameter that sets the optional value of the returned value.

### NSArray 
```
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
```

### NSMutableArray
```
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
```

### NSDictionary
```
/*-------------  Immutable Dictionary  -------------*/
@interface NSDictionary (iTryDictionaryCreation)

- (instancetype _Nullable)tryInitWithObjects:(NSArray * _Nullable)objects forKeys:(NSArray <NSString *> * _Nullable)keys nonNull:(BOOL)nonNull;
- (instancetype _Nullable)tryInitWithDictionary:(NSDictionary * _Nullable)otherDictionary nonNull:(BOOL)nonNull;
- (instancetype _Nullable)tryInitWithDictionary:(NSDictionary * _Nullable)otherDictionary copyItems:(BOOL)flag nonNull:(BOOL)nonNull;

+ (instancetype _Nullable)tryDictionaryWithObject:(id _Nullable)object forKey:(NSString * _Nullable)key nonNull:(BOOL)nonNull;
+ (instancetype _Nullable)tryDictionaryWithObjects:(NSArray * _Nullable)objects forKeys:(NSArray <NSString *> * _Nullable)keys nonNull:(BOOL)nonNull;
+ (instancetype _Nullable)tryDictionaryWithDictionary:(NSDictionary * _Nullable)otherDictionary nonNull:(BOOL)nonNull;

@end
```

### NSMutableDictionary
```
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
```
