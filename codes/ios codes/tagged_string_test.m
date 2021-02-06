#import <Foundation/Foundation.h> 



void print_string_class(NSString *string_ptr) {
	NSLog(@"string=%@ %p class: %@", string_ptr, string_ptr, [string_ptr class]); 
}

// this shows the strange way that tagged pointer strings are created by combining mutableCopy and copy. 
// nonetheless it does confirm that tagged pointer strings are implemented in objc 
// is the same true in swift? 

int main(){
	NSString* short_string = @"Hairy"; 
	print_string_class(short_string); 
	print_string_class([short_string mutableCopy]); 
	print_string_class([[short_string mutableCopy] copy]); 

	return 0; 
}
