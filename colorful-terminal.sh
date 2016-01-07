#!/bin/sh
########################

red=`expr $RANDOM % 50 \* 1000`
green=`expr $RANDOM % 40 \* 1000`
blue=`expr $RANDOM % 40 \* 1000`

osascript << EOF
tell application "Terminal"
  if frontmost then    
    tell window 1
      tell tab 1
        set background color to {$red, $green, $blue}
        set normal text color to "white"
      end tell
    end tell
  end if
end tell
EOF

/usr/bin/osascript << EOF
tell application "iTerm"
  if frontmost then    
    tell the current terminal
      tell the current session
          set background color to {$red, $green, $blue}
      end tell
    end tell
  end if
end tell
EOF