/* Activator Haptic Feedback Listener - allows you to trigger Haptic Feedback while using Activator Events
 * Copyright (C) 2020 Tomasz Poliszuk
 *
 * Activator Haptic Feedback Listener is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Activator Haptic Feedback Listener is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Activator Haptic Feedback Listener. If not, see <https://www.gnu.org/licenses/>.
 */


#import <libactivator/libactivator.h>
#import <UIKit/UIKit.h>

@interface ActivatorHapticFeedbackListenerLight : NSObject <LAListener>
@end
@implementation ActivatorHapticFeedbackListenerLight
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorhapticfeedbacklistener.light"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleLight];
	[generator prepare];
	[generator impactOccurred];
	generator = nil;
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorHapticFeedbackListenerMedium : NSObject <LAListener>
@end
@implementation ActivatorHapticFeedbackListenerMedium
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorhapticfeedbacklistener.medium"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleMedium];
	[generator prepare];
	[generator impactOccurred];
	generator = nil;
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorHapticFeedbackListenerHeavy : NSObject <LAListener>
@end
@implementation ActivatorHapticFeedbackListenerHeavy
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorhapticfeedbacklistener.heavy"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleHeavy];
	[generator prepare];
	[generator impactOccurred];
	generator = nil;
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorHapticFeedbackListenerSoft : NSObject <LAListener>
@end
@implementation ActivatorHapticFeedbackListenerSoft
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorhapticfeedbacklistener.soft"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleSoft];
	[generator prepare];
	[generator impactOccurred];
	generator = nil;
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorHapticFeedbackListenerRigid : NSObject <LAListener>
@end
@implementation ActivatorHapticFeedbackListenerRigid
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorhapticfeedbacklistener.rigid"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc]initWithStyle:UIImpactFeedbackStyleRigid];
	[generator prepare];
	[generator impactOccurred];
	generator = nil;
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorHapticFeedbackListenerSuccess : NSObject <LAListener>
@end
@implementation ActivatorHapticFeedbackListenerSuccess
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorhapticfeedbacklistener.success"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	UINotificationFeedbackGenerator *generator = [[UINotificationFeedbackGenerator alloc] init];
	[generator prepare];
	[generator notificationOccurred:UINotificationFeedbackTypeSuccess];
	generator = nil;
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorHapticFeedbackListenerWarning : NSObject <LAListener>
@end
@implementation ActivatorHapticFeedbackListenerWarning
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorhapticfeedbacklistener.warning"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	UINotificationFeedbackGenerator *generator = [[UINotificationFeedbackGenerator alloc] init];
	[generator prepare];
	[generator notificationOccurred:UINotificationFeedbackTypeWarning];
	generator = nil;
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorHapticFeedbackListenerError : NSObject <LAListener>
@end
@implementation ActivatorHapticFeedbackListenerError
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorhapticfeedbacklistener.error"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	UINotificationFeedbackGenerator *generator = [[UINotificationFeedbackGenerator alloc] init];
	[generator prepare];
	[generator notificationOccurred:UINotificationFeedbackTypeError];
	generator = nil;
}
- (void)dealloc {
	[super dealloc];
}
@end

@interface ActivatorHapticFeedbackListenerSelection : NSObject <LAListener>
@end
@implementation ActivatorHapticFeedbackListenerSelection
+ (void)load {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.tomaszpoliszuk.activatorhapticfeedbacklistener.selection"];
	[pool release];
}
- (void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	UISelectionFeedbackGenerator *generator = [[UISelectionFeedbackGenerator alloc] init];
	[generator prepare];
	[generator selectionChanged];
	generator = nil;
}
- (void)dealloc {
	[super dealloc];
}
@end
