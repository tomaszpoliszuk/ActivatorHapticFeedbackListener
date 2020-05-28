#import <libactivator/libactivator.h>
#import <UIKit/UIKit.h>

@interface ActivatorHapticFeedbackListener : NSObject <LAListener> {
}
@end

@implementation ActivatorHapticFeedbackListener

+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorhapticfeedbacklistener"];

	[pool release];
}

- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
//	[(SBUIController *)[%c(SBUIController) sharedInstance] showAlertWithEvent:event];
	if (@available(iOS 13.0, *)) {
//		UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleLight];
//		UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleMedium];
		UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleHeavy];

//		UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleSoft];
//		UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleRigid];

//		UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:UINotificationFeedbackTypeSuccess];
//		UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:UINotificationFeedbackTypeWarning];
//		UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:UINotificationFeedbackTypeError];

//		UISelectionFeedbackGenerator *generator = [[UISelectionFeedbackGenerator alloc] init];

//		UINotificationFeedbackGenerator *generator = [[UINotificationFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleHeavy];
		[generator prepare];
		[generator impactOccurred];

//		[generator selectionChanged];
//		[generator notificationOccurred:(notificationType)];
		generator = nil;
	}
}

//	- (void)activator:(LAActivator *)activator abortEvent:(LAEvent *)event {
//	}
//	
//	- (void)activator:(LAActivator *)activator otherListenerDidHandleEvent:(LAEvent *)event {
//	}
//	
//	- (void)activator:(LAActivator *)activator receiveDeactivateEvent:(LAEvent *)event {
//	}

- (void)dealloc {
	[super dealloc];
}

@end