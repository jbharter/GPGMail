//
//  GMSupportPlanWindowController.m
//  GPGMail
//
//  Created by Lukas Pitschl on 20.09.18.
//

#import <Foundation/Foundation.h>
#import "GMSupportPlanAssistantWindowController.h"
#import "DSClickableURLTextField.h"
#import "NSAttributedString+LOKit.h"

#import "GPGMailBundle.h"

//@interface GMSupportPlanAssistantViewController ()
//
//@property (nonatomic, weak) IBOutlet NSTextField *headerTextField;
//@property (nonatomic, weak) IBOutlet NSTextField *subHeaderTextField;
//@property (nonatomic, weak) IBOutlet DSClickableURLTextField *detailsTextField;
//
//@property (nonatomic, weak) IBOutlet NSTextField *emailLabel;
//@property (nonatomic, weak) IBOutlet NSTextField *licenseLabel;
//@property (nonatomic, weak) IBOutlet NSTextField *emailTextField;
//@property (nonatomic, weak) IBOutlet NSTextField *licenseTextField;
//
//@property (nonatomic, weak) IBOutlet NSStackView *progressStackView;
//@property (nonatomic, weak) IBOutlet NSProgressIndicator *progressIndicator;
//@property (nonatomic, weak) IBOutlet NSTextField *progressTextField;
//
//@property (nonatomic, weak) IBOutlet NSButton *continueButton;
//@property (nonatomic, weak) IBOutlet NSButton *cancelButton;
//
//@end

@interface NSColor (Add)

+ (NSColor *)linkColor;

@end

//@interface GMSupportPlanAssistantWindowController () <NSWindowDelegate>
//@end

//@implementation GMSupportPlanAssistantWindowController

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//    }
//    return self;
//}

//- (NSNibName)windowNibName {
//    return @"GMSupportPlanAssistantWindow";
//}
//
//- (NSBundle *)windowNibBundle {
//    return [GPGMailBundle bundle];
//}


//- (void)windowDidLoad {
//    [super windowDidLoad];
//
//    [[self window] setDelegate:self];
//}


#pragma mark - NSWindowDelegate

//- (void)windowWillClose:(NSNotification *)notification
//{
//    if ([[self delegate] respondsToSelector:@selector(supportPlanAssistantDidClose:)])
//    {
//        [[self delegate] supportPlanAssistantDidClose:self];
//    }
//}

//- (void)showActivationError {
//    NSAlert *alert = [NSAlert new];
//    alert.informativeText = @"The entered activation code is invalid. Please check the entered information and try again.";
//    alert.messageText = @"Support Plan Activation Failed";
//    alert.icon = [NSImage imageNamed:@"GPGMail"];
//    [alert beginSheetModalForWindow:[self window] completionHandler:^(NSModalResponse returnCode) {
//
//    }];
//}

//- (void)activationDidCompleteWithSuccess {
//    [(GMSupportPlanAssistantViewController *)[[self window] contentViewController] setState:GMSupportPlanViewControllerStateActivating];
//    NSAlert *alert = [NSAlert new];
//    alert.messageText = @"Support Plan Activation";
//    alert.informativeText = @"Thank you for your support!\n\nWe hope you enjoy using GPG Mail. Should you have any questions, don't hesitate to contact us via \"Report a Problem\" in Mail -> Preferences -> GPGMail";
//    alert.icon = [NSImage imageNamed:@"GPGMail"];
//    [alert beginSheetModalForWindow:[self window] completionHandler:^(NSModalResponse returnCode) {
//        [[self delegate] closeSupportPlanAssistant:self];
//    }];
//}

//- (void)activationDidFailWithError:(NSError *)error {
//    [(GMSupportPlanAssistantViewController *)[[self window] contentViewController] setState:GMSupportPlanViewControllerStateActivating];
//    NSAlert *alert = [NSAlert new];
//    alert.informativeText = @"The entered activation code is either invalid or might have been used already.\nPlease contact us at business@gpgtools.org if you are sure that you have entered your code correctly.";
//    alert.messageText = @"Support Plan Activation Failed";
//    alert.icon = [NSImage imageNamed:@"GPGMail"];
//    [alert beginSheetModalForWindow:[self window] completionHandler:^(NSModalResponse returnCode) {
//
//    }];
//}

//- (instancetype)initWithSupportPlanActivationInformation:(NSDictionary *)supportPlanInformation {
//    self = [super init];
//    if(self) {
//        _supportPlanInformation = supportPlanInformation;
//    }
//    return self;
//}
//
//@end


//@implementation GMSupportPlanAssistantViewController
//
//- (NSNibName)nibName {
//    return @"GMSupportPlanAssistantView";
//}
//
//- (NSBundle *)nibBundle {
//    return [GPGMailBundle bundle];
//}
//
//
//- (void)setState:(GMSupportPlanAssistantViewControllerState)state {
//    if (_state != state) {
//        _state = state;
//
//        _emailTextField.enabled = (state == GMSupportPlanViewControllerStateBuy);
//        _licenseTextField.enabled = (state == GMSupportPlanViewControllerStateBuy);
//        _emailTextField.editable = (state == GMSupportPlanViewControllerStateBuy);
//        _licenseTextField.editable = (state == GMSupportPlanViewControllerStateBuy);
//        _progressStackView.hidden = (state != GMSupportPlanViewControllerStateActivating);
//        if (state == GMSupportPlanViewControllerStateActivating) {
//            [_progressIndicator startAnimation:nil];
//        } else {
//            [_progressIndicator stopAnimation:nil];
//        }
//        _continueButton.enabled = (state == GMSupportPlanViewControllerStateBuy);
//    }
//}
//
//- (void)setEmail:(NSString *)email {
//
//    if(_email != email) {
//        _email = email;
//    }
//}
//
//- (void)setActivationCode:(NSString *)activationCode {
//
//    if(_activationCode != activationCode) {
//        _activationCode = activationCode;
//    }
//}
//
//- (IBAction)cancel:(id)sender {
//    [[self delegate] supportPlanAssistantShouldStartTrial:[[[self view] window] windowController]];
//    [[self delegate] closeSupportPlanAssistant:[[[self view] window] windowController]];
//}
//
//@end
