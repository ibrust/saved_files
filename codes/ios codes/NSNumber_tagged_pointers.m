#import <Foundation/Foundation.h> 

// it appears this is triggering a seg fault, and yet it is running to completion too. 
// i read a little about this, and apparently you have to be careful when using these numbers 
// if some other part of iOS tries to dealloc one of these numbers - maybe you use it in a way that another part of iOS expects - than this can trigger a seg fault. 
// apparently you have to make sure to be very careful when setting this as the value of other things - make sure they don't get deallocated if you do that, for example (retain strong references to them somewhere) 
// that's not the actual raeson it's seg faulting now, though. 


#define kCFTaggedObjectID_Integer 7 	// 111 - this used to be ((3 << 1) + 1) - he wanted to make the final bit explicit because he uses it to indicate a tagged pointer   
#define kCFNumberSInt32Type 3 		// 11 
#define kCFTaggedIntTypeOffset 6 	// 110 ? - this and the next one are used together but it isn't clear  
#define kCFTaggedOffset 2 		// 10 ?    at all what their purposes is, and why he didnt just use 8
#define kCFTaggedIntValueOffset (kCFTaggedIntTypeOffset + kCFTaggedOffset) // 8 or 1000 ...? 
#define MASK (kCFNumberSInt32Type << kCFTaggedIntTypeOffset) // 11000000 ...? an 8 bit number 
#define kCFTaggedIntMask (kCFTaggedObjectID_Integer | MASK)  // 11000111 ...? i think this is indicating the type?

static inline int getInt(NSNumber *o) {
	long long n = (long long) o; 
	if (n & 1) {					// so if you're handling a tagged pointer 
		return n >> kCFTaggedIntValueOffset;	// just removing the tag basically 
	} else {
		return [o intValue];			// if it's not a tagged pointer, treat it normally?
	}
} 

static inline NSNumber *makeInt(long long o) {
	// so this is making room in the pointer address by shifting it over 8 bits, and then ORing it with
	// the int mask - the INT mask should 11000111, right...? it's 199 
	return (NSNumber*)((o << kCFTaggedIntValueOffset) | kCFTaggedIntMask); 
}

int main(int argc, char* argv[]){
	NSNumber* sum = nil; 
	for (int k = 0; k < 1000000; k++) {
		sum = makeInt(0); 
		for (int i = 1; i <= 1000; i++) {
			sum = makeInt(getInt(sum) + i); 
		}
	}

	int final_sum = getInt(sum); 	// the code appears to do the calculation safely but crash without this line. But it seems to work otherwise, as unstable as it is. I think the problem was trying to access a pointer at an invalid address. so it may take a bit of finessing to get this code to work, but the improvement is significant.  
	
	NSLog(@"ran to completion: %d", final_sum);

	return 0;
}

