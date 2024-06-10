$Inputprofile = "pt-br"

$inputlanguageid = "0416:00000416"
#https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-8.1-and-8/hh825682(v=win.10)?redirectedfrom=MSDN

$GeoID = "32"
#https://docs.microsoft.com/en-us/windows/win32/intl/table-of-geographical-locations
 
write-host "Successfully added variables inputprofile=$Inputprofile,inputlanguageid=$InputLanguageID and GeoID=$Geoid"
$path = "C:\Windows\Temp\Country.xml"
write-host "Creating $path"
New-item $path -ItemType File -Force -ErrorAction SilentlyContinue
write-host "Successfully created $path"
 
#Putting the base info in the xml file
write-host "Putting the base info in the xml file"
Set-content $path '<gs:GlobalizationServices xmlns:gs="urn:longhornGlobalizationUnattend">
<!--User List-->
<gs:UserList>
<gs:User UserID="Current" CopySettingsToSystemAcct="true" CopySettingsToDefaultUserAcct="true" />
</gs:UserList>
 
<!--Display Language-->
<gs:MUILanguagePreferences>
<gs:MUILanguage Value="MUILanguageValue" />
<gs:MUIFallback Value="pt-BR" />
</gs:MUILanguagePreferences>
 
<!--User Locale -->
<gs:UserLocale>
<gs:Locale Name="UserLocaleValue" SetAsCurrent="true" ResetAllSettings="false"/>
</gs:UserLocale>

<!--input preferences-->
<gs:InputPreferences>
 
<!--en-US-->
<gs:InputLanguageID Action="add" ID="0416:00010416"/>
 
<!--Specific-Language-->
<gs:InputLanguageID Action="add" ID="InputLanguageIDValue" Default="true"/>
 
</gs:InputPreferences>
 
<!--location-->
<gs:LocationPreferences>
<gs:GeoID Value="GeoIDValue"/>
</gs:LocationPreferences>
</gs:GlobalizationServices>'
write-host "Successfully Putting the base info in the xml file"

#Changing MUILanguageValue,UserLocaleValue,InputlanguageIDValue,GeoIDValue
write-host "Changing MUILanguageValue,UserLocaleValue,InputlanguageIDValue,GeoIDValue"
(get-content $path) | foreach-object {$_ -replace "MUILanguageValue", "$Inputprofile"} | set-content $path
(get-content $path) | foreach-object {$_ -replace "UserLocaleValue", "$Inputprofile"} | set-content $path
(get-content $path) | foreach-object {$_ -replace "InputLanguageIDValue", "$InputLanguageID"} | set-content $path
(get-content $path) | foreach-object {$_ -replace "GeoIDValue", "$GeoID"} | set-content $path
write-host "Successfully Changing MUILanguageValue,UserLocaleValue,InputlanguageIDValue,GeoIDValue"

#Executing the regionsetting values
write-host "Executing the regionsetting values"
Start-Process -FilePath 'control.exe' -ArgumentList ('intl.cpl,,/f:"C:\Windows\Temp\Country.xml')
write-host "Successfully the regionsetting values"
start-sleep 1