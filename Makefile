CXX=/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/g++
CXXFLAGS=-x objective-c++ -arch armv6 -isysroot /Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS3.1.3.sdk -mthumb -miphoneos-version-min=3.0

all: MobileSubstrateAPELite.o
	lipo -create -output APELite.o APE\ Lite/APELite.o MobileSubstrateAPELite.o

clean:
	rm -f *.o
