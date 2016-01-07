#!/bin/sh
########################

osascript -l JavaScript << EOF

  var red = Math.random()*0.3+0.3;
  var green = Math.random()*0.3;
  var blue = Math.random()*0.2;

  var terminal = Application('Terminal');
  var win = terminal.windows[0];
  var tab = win.tabs[0];
  tab.backgroundColor = [red, green, blue];

  red *= 100000;
  green *= 100000;
  blue *= 100000;

  var iterm = Application('iTerm');
  var term = iterm.currentTerminal();
  var sess = term.currentSession();
  sess.backgroundColor = [red, green, blue];
  
EOF

