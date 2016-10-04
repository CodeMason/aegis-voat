Aegis for Windows 7/8.x
========================
Blocks all known Microsoft spying and Windows 10 upgrade elements

Details:
====
* Block 197 bad hosts
* Change windows update to check/notify (do not download/install)
* Disable automatic delivery of internet explorer via windows update
* Disable ceip/gwx/skydrive(aka onedrive)/spynet/telemetry/wifisens
* Disable remote registry
* Disable 31 scheduled tasks
* Disable windows 10 download directory
* Remove diagtrack
* Sync's time to ntp.org
* Hide/uninstall kb updates (see below).

Instructions:
====
**Prep**: Download, unzip  

1. For a new Windows SP1 install, download and install these KB updates in the following order.
 * [KB3050265](https://github.com/CodeMason/aegis-voat/raw/master/1-Windows6.1-KB3050265-x64.msu) (Note: For W8 it's KB3050267):
 * [KB3065987](https://github.com/CodeMason/aegis-voat/raw/master/2-Windows6.1-KB3065987-v2-x64.msu)  
 * [KB3102810](https://github.com/CodeMason/aegis-voat/raw/master/3-Windows6.1-KB3102810-x64.msu)  
 * [KB3135445](https://github.com/CodeMason/aegis-voat/raw/master/4-Windows6.1-KB3135445-x64.msu)  
 * [KB3138612](https://github.com/CodeMason/aegis-voat/raw/master/5-Windows6.1-KB3138612-x64.msu)  
2. **Reboot**
3. Run 'repairwindowsupdate.cmd' (right click, run as admin)
4. Check for updates (On a new install, this can take a long time)
5. Run Aegis (right click on aegis.cmd, click "run as administrator", follow on-screen instructions)  
6. Install updates
7. Reboot
8. Repeat 4-7 every time you check for updates.



WARNING: Internet Explorer:
====
Some updates which may contain critical security patches for ie, as well as automated delivery of ie and related updates, will be blocked. Due to the obvious security risk posed by running an unpatched browser we strongly advise to uninstall ie. If you plan to continue to use ie you should probably not run this script - or manually patch and do so at your own risk.

Liability:
====
All code except sed and setacl is provided as open source so you can look and see for yourself what it does. It has been thoroughly tested on my own systems and scanned on VirusTotal and to the best of my knowledge it does not contain any harmful or malicious elements. However I assume no liability for any problems so use it at your own risk.

License:
====
There is no official license - you are welcome to modify and share my code and you do not have to give me credit. I do appreciate any feedback and I will give you credit if I use your ideas. This script is the product of a collaborate effort and does not belong to any one person.

Windows Update:
====
This script will not block Windows Update however it will change your Windows Update settings to 'check/notify but do not download/install'. If you have problems getting Windows Update to work properly after running the script you may need to run the Windows Update Troubleshooter or the System Update Readiness Tool. If you have recently installed updates and have not yet rebooted you should reboot before running the script. If you are on a fresh install you may want to install all updates before running Aegis for the first time, otherwise it may take a long time to update.

KB update description
====
- [971033](https://support.microsoft.com/en-us/kb/971033) update for windows activation technologies
- [2882822](https://support.microsoft.com/en-us/kb/2882822) update for adding itracerelogger interface support
- [2902907](https://support.microsoft.com/en-us/kb/2902907) description not available, update was pulled by microsoft
- [2922324](https://support.microsoft.com/en-us/kb/2922324) description not available, update was pulled by microsoft
- [2952664](https://support.microsoft.com/en-us/kb/2952664) update for upgrading windows 7
- [2976978](https://support.microsoft.com/en-us/kb/2976978) update for windows 8.1 and windows 8
- [2977759](https://support.microsoft.com/en-us/kb/2977759) update for windows 7 rtm
- [2990214](https://support.microsoft.com/en-us/kb/2990214) update that enables you to upgrade from windows 7 to a later version of windows
- [2966583](https://support.microsoft.com/en-us/kb/2966583) Improvements for the System Update Readiness Tool
- [3012973](https://support.microsoft.com/en-us/kb/3012973) upgrade to windows 10
- [3014460](https://support.microsoft.com/en-us/kb/3014460) update for windows insider preview / upgrade to windows 10
- [3015249](https://support.microsoft.com/en-us/kb/3015249) update that adds telemetry points to consent.exe in Windows 8.1 and Windows 7
- [3021917](https://support.microsoft.com/en-us/kb/3021917) update for windows 7 sp1 for performance improvements
- [3022345](https://support.microsoft.com/en-us/kb/3022345) update for customer experience and diagnostic telemetry
- [3035583](https://support.microsoft.com/en-us/kb/3035583) update installs get windows 10 app in windows 8.1 and windows 7 sp1
- [3042058](https://support.microsoft.com/en-us/kb/3042058) update for cipher suite priority order (contains winlogon spying elements)
- [3044374](https://support.microsoft.com/en-us/kb/3044374) update that enables you to upgrade from windows 8.1 to windows 10
- [3046480](https://support.microsoft.com/en-us/kb/3046480) update for migrating .net when upgrading to later version of windows
- [3058168](https://support.microsoft.com/en-us/kb/3058168) update activate windows 10 from windows 8 or windows 8.1, and windows server 2012 or windows server 2012 r2 kms hosts
- [3064683](https://support.microsoft.com/en-us/kb/3064683) update for windows 8.1 oobe modifications to reserve windows 10
- [3065987](https://support.microsoft.com/en-us/kb/3065987) update for windows update client for windows 7 and windows server 2008 r2 july 2015
- [3065988](https://support.microsoft.com/en-us/kb/3065988) update for windows update client for windows 8.1 and windows server 2012 r2 july 2015
- [3068708](https://support.microsoft.com/en-us/kb/3068708) update for customer experience and diagnostic telemetry
- [3072318](https://support.microsoft.com/en-us/kb/3072318) update for windows 8.1 oobe modifications to reserve windows 10
- [3074677](https://support.microsoft.com/en-us/kb/3074677) compatibility update for upgrading to windows 10
- [3075249](https://support.microsoft.com/en-us/kb/3075249) update that adds telemetry points to consent.exe in windows 8.1 and windows 7
- [3075851](https://support.microsoft.com/en-us/kb/3075851) update for windows update client for windows 7 and windows server 2008 r2 august 2015
- [3075853](https://support.microsoft.com/en-us/kb/3075853) update for windows update client for windows 8.1 and windows server 2012 r2 august 2015
- [3080149](https://support.microsoft.com/en-us/kb/3080149) update for customer experience and diagnostic telemetry
- [3081437](https://support.microsoft.com/en-us/kb/3081437) august 18, 2015, compatibility update for upgrading to windows 10
- [3081454](https://support.microsoft.com/en-us/kb/3081454) september 8, 2015, compatibility update for upgrading to windows 10
- [3081954](https://support.microsoft.com/en-us/kb/3081954) update for work folders improvements in windows 7 sp1 (contains telemetry elements)
- [3083324](https://support.microsoft.com/en-us/kb/3083324) update for windows update client for windows 7 and windows server 2008 r2 september 2015
- [3083325](https://support.microsoft.com/en-us/kb/3083325) update for windows update client for windows 8.1 and windows server 2012 r2 september 2015
- [3083710](https://support.microsoft.com/en-us/kb/3083710) update for windows update client for windows 7 and windows server 2008 r2 october 2015
- [3083711](https://support.microsoft.com/en-us/kb/3083711) update for windows update client for windows 8.1 and windows server 2012 r2 october 2015
- [3086255](https://support.microsoft.com/en-us/kb/3086255) september 8, 2015, security update for the graphics component in windows (the update breaks safedisc)
- [3088195](https://support.microsoft.com/en-us/kb/3088195) october 13, 2015, security update for windows kernel (reported to contain a keylogger)
- [3090045](https://support.microsoft.com/en-us/kb/3090045) windows update for reserved devices in windows 8.1 or windows 7 sp1 (windows 10 upgrade elements)
- [3093983](https://support.microsoft.com/en-us/kb/3093983) security update for internet explorer: october 13, 2015 (ie spying elements)
- [3102810](https://support.microsoft.com/en-us/kb/3102810) windows 10 upgrade elements
- [3102812](https://support.microsoft.com/en-us/kb/3102812) windows 10 upgrade elements
- [3112343](https://support.microsoft.com/en-us/kb/3112343) update for windows update client for windows 7 and windows server 2008 r2 december 2015
- [3112336](https://support.microsoft.com/en-us/kb/3112336) update for windows update client for windows 8.1 and windows server 2012 r2 december 2015
- [3123862](https://support.microsoft.com/en-us/kb/3123862) updated capabilities to upgrade windows 8.1 and windows 7
- [3135445](https://support.microsoft.com/en-us/kb/3135445) windows update client for windows 7 and windows server 2008 r2: february 2016
- [3135449](https://support.microsoft.com/en-us/kb/3135449) windows update client for windows 8.1 and windows server 2012 r2: february 2016
- [3138612](https://support.microsoft.com/en-us/kb/3138612) windows update client for windows 7 and windows server 2008 r2: march 2016
- [3138615](https://support.microsoft.com/en-us/kb/3138615) windows update client for windows 8.1 and windows server 2012 r2: march 2016
- [3139929](https://support.microsoft.com/en-us/kb/3139929) security update for internet explorer: march 8, 2016
- [3146449](https://support.microsoft.com/en-us/kb/3146449) updated internet explorer 11 capabilities to upgrade windows 8.1 and windows 7
- [3150513](https://support.microsoft.com/en-us/kb/3150513) may 2016 compatibility update for windows
- [3173040](https://support.microsoft.com/en-us/kb/3173040)	Windows 8.1 and Windows 7 SP1 end of free upgrade offer notification


- Thanks to @alexzerg11, @allockse, @AxiomBreak, @elixxx, @erskine, @eSh, @GGLapkizzz, @ilikeskittles, @liquidinsects, @Magoo204, @Mixplate, @mythias, @PaulDG, @pstein, @RypeDub420, @spexdi, @tor11, @Umrtvovacz, @qzxq, @thequestion, @tor11, @tr3bg0d, @Umrtvovacz, @Voluptuous_Panda, and @Zaphain.
