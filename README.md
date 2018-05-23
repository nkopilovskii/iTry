# iTry

##
In Objective-C, when dealing with classes that implement data structures (‘’’NSSet’’’, ‘’’NSArray’’’, ‘’’NSDictionary’’’), it often has to deal with situations when an unsuitable parameter of the method (transfer of an empty object, going beyond a range of values, etc.) leads to crash.

Especially this problem is relevant in projects with dynamically generated data or in client-server applications, in which there is no guarantee that the transmitted parameter will have a correct value.

The simplest solution is to check these parameters before calling the method (using ‘’’if-else’’’ or ‘’’@try-@catch’’’). This avoids crashing the program in potentially "dangerous" places, but in turn leads to code repetition and reduces its readability.
