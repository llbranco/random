#HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel\ {20D04FE0-3AEA-1069-A2D8-08002B30309D} = 0/show , 1/hide
$path="HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel"
$name="{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
$name2="{59031a47-3f72-44a7-89c5-5595fe6b30ee}"
$exist="Get-ItemProperty -Path $path -Name $name"
if ($exist)
{
    Set-ItemProperty -Path $path -Name $name -Value 0
}
Else
{
    New-ItemProperty -Path $path -Name $name -Value 0
}
if ($exist)
{
    Set-ItemProperty -Path $path -Name $name2 -Value 0
}
Else
{
    New-ItemProperty -Path $path -Name $name2 -Value 0
}
#For reference other icons are:
#Computador="{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
#Painel de controle="{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}"
#Usuário="{59031a47-3f72-44a7-89c5-5595fe6b30ee}"
#Rede="{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}"
#RecycleBin="{645FF040-5081-101B-9F08-00AA002F954E}"