//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

//#import "NSObject.h"

#import "MFAddProgressMonitor.h"

@class NSProgress, NSString;

@interface MFLibraryProgressUpdater : NSObject <MFAddProgressMonitor>
{
    NSProgress *_progress;	// 8 = 0x8
}

@property(readonly, nonatomic) NSProgress *progress; // @synthesize progress=_progress;
- (void).cxx_destruct;	// IMP=0x000000000015e0a0
- (void)setFractionDone:(double)arg1;	// IMP=0x000000000015e029
- (id)init;	// IMP=0x000000000015df5a
- (id)initWithProgress:(id)arg1;	// IMP=0x000000000015dee2

// Remaining properties
@property(readonly, copy) NSString *debugDescription;
@property(readonly, copy) NSString *description;
@property(readonly) unsigned long long hash;
@property(readonly) Class superclass;

@end

