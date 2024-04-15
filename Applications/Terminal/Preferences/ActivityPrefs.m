/*
  Copyright (c) 2024-present Sergii Stoian <stoyan255@gmail.com>

  This program is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation; either version 2 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
*/

#import "ActivityPrefs.h"
#include "Foundation/NSObjCRuntime.h"

@implementation ActivityPrefs

#pragma mark - PrefsModule protocol

+ (NSString *)name
{
  return @"Activity Monitor";
}

- (NSView *)view
{
  return view;
}

- (void)_updateControls:(Defaults *)defs
{
}

// Show preferences of main window
- (void)showWindow
{
  [self _updateControls:[[Preferences shared] mainWindowLivePreferences]];
}

#pragma mark - ActivityPrefs

- init
{
  self = [super init];

  if ([NSBundle loadNibNamed:@"ActivityMonitor" owner:self] == NO) {
    NSLog(@"Failed to load ActivityMonitor NIB.");
  }

  return self;
}

- (IBAction)setWindow:(id)sender
{
}

- (IBAction)setDefault:(id)sender
{
}

- (IBAction)showDefault:(id)sender
{
}

- (IBAction)addCleanCommand:(id)sender
{
}

- (IBAction)removeCleanCommand:(id)sender
{
}

- (IBAction)setActivityMonitor:(id)sender
{
}

- (IBAction)setBackgroundProcesses:(id)sender
{
}

@end