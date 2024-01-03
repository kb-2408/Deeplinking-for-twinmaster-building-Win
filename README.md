# Deeplinking-for-twinmaster-building-Win

Setup:
1. Under "Files" section of the code set the file path of the executable and directory to be packaged.
2. Under "Setup" section, set file paths of the app icon in SetupIconFile variable, licence file path of the app in LicenseFile variable, directory where the installer should be created in OutputDir variable and installer filename in OutputBaseFilename variable
3. At the top the script, application display name, version, publisher, URL scheme and app executable name must be defined

Process:
1. Generate GUID by navigating to Tools > Generate GUID.
2. Assign this GUID value to "AppId" variable in "Setup" section of the code.
3. Go to Run > Run. The installer creation process will begin. When completed, the installer will be created in the <OutputDir> by the name of <OutputBaseFilename>
