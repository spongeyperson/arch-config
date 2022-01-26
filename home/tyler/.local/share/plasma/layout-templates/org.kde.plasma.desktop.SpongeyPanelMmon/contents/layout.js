//Define Panel Variables
var panel = new Panel
var panelScreen = panel.screen
var freeEdges = {"bottom": true, "top": true, "left": true, "right": true}

for (i = 0; i < panelIds.length; ++i) {
    var tmpPanel = panelById(panelIds[i])
    if (tmpPanel.screen == panelScreen) {
        // Ignore the new panel
        if (tmpPanel.id != panel.id) {
            freeEdges[tmpPanel.location] = false;
        }
    }
}

// If Top Edge is Free, Place Panel on Top. If not; Place on any free location
if (freeEdges["top"] == true) {
    panel.location = "top";
} else if (freeEdges["bottom"] == true) {
    panel.location = "bottom";
} else if (freeEdges["left"] == true) {
    panel.location = "left";
} else if (freeEdges["right"] == true) {
    panel.location = "right";
} else {
    // There is no free edge, so leave the default value
    panel.location = "top";
}

//Panel Height Variable
panel.height = gridUnit * 2

//Create Initial Widgets
//use Kicker Instead of Kickoff
var kicker = panel.addWidget("org.kde.plasma.kicker")


//Application Title with Settings
var apptitle = panel.addWidget("org.communia.apptitle")
apptitle.currentConfigGroup = ["General"]
apptitle.writeConfig("bold", "true")
apptitle.writeConfig("noWindowType", "text")
apptitle.writeConfig("noWindowText", "Plasma Desktop")
apptitle.writeConfig("textType", "1")

panel.addWidget("org.kde.windowappmenu")
panel.addWidget("org.kde.plasma.panelspacer")

/* Next up is determining whether to add the Input Method Panel
 * widget to the panel or not. This is done based on whether
 * the system locale's language id is a member of the following
 * white list of languages which are known to pull in one of
 * our supported IME backends when chosen during installation
 * of common distributions. */

var langIds = ["as",    // Assamese
               "bn",    // Bengali
               "bo",    // Tibetan
               "brx",   // Bodo
               "doi",   // Dogri
               "gu",    // Gujarati
               "hi",    // Hindi
               "ja",    // Japanese
               "kn",    // Kannada
               "ko",    // Korean
               "kok",   // Konkani
               "ks",    // Kashmiri
               "lep",   // Lepcha
               "mai",   // Maithili
               "ml",    // Malayalam
               "mni",   // Manipuri
               "mr",    // Marathi
               "ne",    // Nepali
               "or",    // Odia
               "pa",    // Punjabi
               "sa",    // Sanskrit
               "sat",   // Santali
               "sd",    // Sindhi
               "si",    // Sinhala
               "ta",    // Tamil
               "te",    // Telugu
               "th",    // Thai
               "ur",    // Urdu
               "vi",    // Vietnamese
               "zh_CN", // Simplified Chinese
               "zh_TW"] // Traditional Chinese

if (langIds.indexOf(languageId) != -1) {
    panel.addWidget("org.kde.plasma.kimpanel");
}

//panel.addWidget("org.kde.plasma.showActivityManager")
//Desktop Pager with Settings
var pager = panel.addWidget("org.kde.plasma.pager")
pager.currentConfigGroup = ["General"]
pager.writeConfig("showWindowIcons", "true")
pager.writeConfig("showOnlyCurrentScreen", "true")

//Removed System Tray due to Duplicate Plasma Notifications
//panel.addWidget("org.kde.plasma.systemtray")

//System Tray Alternative
panel.addWidget("org.kde.plasma.mediacontroller")
panel.addWidget("org.kde.plasma.clipboard")
panel.addWidget("org.kde.plasma.volume")
panel.addWidget("org.kde.plasma.bluetooth")
panel.addWidget("org.kde.plasma.networkmanagement")

//Config Weather Widget
var weather = panel.addWidget("org.kde.weatherWidget")
weather.currentConfigGroup = ["Appearance"]
weather.writeConfig("layoutType","2")
weather.currentConfigGroup = ["Units"]
weather.writeConfig("temperatureType","fahrenheit")
weather.writeConfig("pressureType","inHg")
weather.writeConfig("windSpeedType","1")

//Latte Seperator
var separator = panel.addWidget("org.kde.latte.separator")

//Digital Clock with Settings
var digitalclock = panel.addWidget("org.kde.plasma.digitalclock")
digitalclock.currentConfigGroup = ["Apperance"]
digitalclock.writeConfig("showSeconds", "true")
digitalclock.writeConfig("showDate", "true")
digitalclock.writeConfig("dateFormat", "custom")
digitalclock.writeConfig("customDateFormat", "ddd | MMM d, yyyy")

//#Optional Show Desktop Widget
//panel.addWidget("org.kde.plasma.showdesktop")

