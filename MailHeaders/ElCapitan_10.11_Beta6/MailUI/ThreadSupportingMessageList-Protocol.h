/*
 *     Generated by class-dump 3.4 (64 bit).
 *
 *     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2012 by Steve Nygard.
 */

#import "MessageList.h"

@protocol ThreadSupportingMessageList <MessageList>
@property(readonly, nonatomic) __weak id <ThreadedMessageListDelegate> delegate;
- (id)closeAllThreads;
- (id)closeThreads:(id)arg1;
- (id)openAllThreads;
- (id)openThreads:(id)arg1;
@end
