/* ComposeHeaderView+GPGMail.h created by Lukas Pitschl (@lukele) on Wed 03-Aug-2011 */

/*
 * Copyright (c) 2000-2011, GPGTools Project Team <gpgtools-devel@lists.gpgtools.org>
 * All rights reserved.
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of GPGTools Project Team nor the names of GPGMail
 *       contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE GPGTools Project Team ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE GPGTools Project Team BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import <AppKit/AppKit.h>
#import <ComposeBackEnd.h>
#import <DocumentEditor.h>
#import <OptionalView.h>
#import "CCLog.h"
#import "NSObject+LPDynamicIvars.h"
#import "ComposeBackEnd+GPGMail.h"
#import "ComposeHeaderView+GPGMail.h"

@implementation ComposeHeaderView_GPGMail

- (void)MAAwakeFromNib {
    ComposeBackEnd *backEnd = [(DocumentEditor *)[[((ComposeHeaderView *)self) delegate] valueForKey:@"_documentEditor"] backEnd];
    [backEnd setIvar:@"PGPEnabled" value:[NSNumber numberWithBool:YES]];

    [self MAAwakeFromNib];
}

- (CGRect)MA_calculateSecurityFrame:(CGRect)frame {
    if([[GPGOptions sharedOptions] boolForKey:@"UseOpenPGPToSend"]) {
        if([[self valueForKey:@"_securityOptionalView"] ivarExists:@"securityViewWidth"])
            frame.size.width = [[[self valueForKey:@"_securityOptionalView"] getIvar:@"securityViewWidth"] floatValue];
    }
    CGRect newRect = [self MA_calculateSecurityFrame:frame];
    return newRect;
}

@end
