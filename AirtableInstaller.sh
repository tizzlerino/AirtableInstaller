# Download the .dmg
curl https://static.airtable.com/download/AirtableInstaller.dmg --output ./AirtableInstaller.dmg

# Mount the .dmg
hdiutil attach AirtableInstaller.dmg

# Copy the application to the application folder.
cp -r "/Volumes/Airtable 1.5.3/Airtable.app" /Applications/

# Make sure of what disk the .dmg was mounted as.
thisOne=`hdiutil info | grep -i /Volumes/Airtable | cut -w -f1`

# Unmount the drive.
hdiutil detach $thisOne

# Delete the .dmg.
rm AirtableInstaller.dmg