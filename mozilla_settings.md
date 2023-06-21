This is a file containing my preferred mozilla firefox settings.  
The settings include privacy preserving and performance optimization.  
This file was created and modified on June 20, 2023 @ 5:08 am  
Current Mozilla Firefox version: v114.0  

1. Enabling Hardware Acceleration

- Browse about:preferences
- Uncheck the "Use recommended performance settings" option.
- Check the "Use hardware acceleration when available".

2. Disable Firefox Data Collection and Use

- Browse about:preferences
- Click on "Privacy and Security" and then proceed to "Firefox Data Collection and Use" and uncheck all the options.
- Restart Firefox.

3. Modify Hidden Firefox Settings

- Browse about:config
- Accept the Risk and continue.
- Set the list of preferences below to false:  

browser.download.animateNotification  
browser.newtabpage.activity-stream.telemetry  
browser.newtabpage.activity-stream.feeds.telemetry  
browser.ping-centre.telemetry  
toolkit.telemetry.bhrPing.enabled  
toolkit.telemetry.archive.enabled  
toolkit.telemetry.firstShutdownPing.enabled  
toolkit.telemetry.reportingpolicy.firstRun  
toolkit.telemetry.newProfilePing.enabled  
toolkit.telemetry.unified  
toolkit.telemetry.shutdownPingSender.enabled  
toolkit.telemetry.updatePing.enabled  


