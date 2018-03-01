# IntelliJ Config Project

## How To: Export Settings
1. Delete contents of `config` directory if left over from a previous run
2. Start IntelliJ with a clean config: `./launch-custom.sh <path to IntelliJ install>`
    * Explanation: runs an isolated version of IntelliJ via a customized `idea.properties`. If you don't have bash available, 
    it's easy enough to do by hand. Look at the script and refer to this doc to understand how the config works:
    https://www.jetbrains.com/help/idea/tuning-intellij-idea.html#configure-platform-properties  
3. Import previous `settings.jar`: welcome screen -> configure -> import settings
4. Restart IntelliJ to apply settings
5. Install plugins: wait for green notification bubble next to "Events", click it to update
6. Restart IntelliJ to apply plugins
7. Modify settings as desired
8. Export new settings: welcome screen -> configure -> export settings.

**IMPORTANT:** Pay attention to what settings you export to avoid overriding everyone's personal customizations.
Especially do not export "DefaultFont", "Look and Feel", or other UI-related settings. If you aren't sure what is being 
exported, try looking at the `settings.jar` (which contains human-readable config files). 

## How To: Import Settings
### One time setup
1. Prerequisite: Check out `common-build`.
    * Note: If checked out somewhere other than `C:/Data/workspace/eclipse/common-build`, change your IntelliJ settings 
    for Checkstyle and Eclipse Code Formatter plugins to reflect this.
2. Download and install IntelliJ IDEA Ultimate.
    * Link: https://www.jetbrains.com/idea/download/
    * Note: You likely won't have privileges to install under `C:/Program Files` on your VM. Anywhere else such as your user's 
    `AppData` directory works fine.
3. Open IntelliJ
4. Import NIPR settings
    1. Download `settings.jar` from this repo
    2. Go to Configure -> Import Settings
    3. Select the settings jar
    4. Make sure all categories are selected (the default) and confirm
5. Restart IntelliJ to apply settings (the IDE should display a notification prompting you to do this)
6. A green notification bubble should appear prompting you to update/install plugins. Accept this and restart again when prompted.

### Each time you check out an Ant/Ivy project
*Note:* These steps will be unnecessary for Gradle-based projects due to much better IntelliJ integration.

1. Verify project structure: File -> Project Structure or `ctrl-alt-shift-s`
    1. Project Settings -> Project: Make sure "Project SDK" and "Project Language Level" are correct (presumably Java 8)
    2. If "Problems" section shows any issues, resolve them. Projects with Eclipse's `.classpath` file will frequently have 
    extraneous modules related to Ivy and/or TestNG that IntelliJ misinterprets. The broken ones (shown in red) can be safely 
    removed. 
2. Ivy config: settings file
    1. Open project settings: File -> Settings or `ctrl-alt-s`
    2. Go to Other Settings -> IvyIDEA
    3. Under "Ivy Settings" at the top, click "Choose Your Own" and select `ivysettings-windows.xml` from your `common-build` 
    directory.
3. Resolve/refresh Ivy dependencies: right click on project's root folder -> IvyIDEA -> Resolve for all modules

## Notes/Tips
* Do **not** check IntelliJ IDE files (`.idea` directory, `*.iml` and `*.eml` files) into version control.
* Useful references:
    * Eclipse users, start here: [Migrating From Eclipse to IntelliJ IDEA](https://www.jetbrains.com/help/idea/eclipse.html)
    * Video tutorials: https://www.jetbrains.com/idea/documentation/
    * Text tutorials and docs: https://www.jetbrains.com/help/idea/discover-intellij-idea.html
