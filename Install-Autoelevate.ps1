# https://support.autoelevate.com/hc/en-us/articles/115003703811-System-Agent-Installation

if (!(test-path $env:ToolsDir)) {
    New-Item -ItemType Directory -Path $env:ToolsDir
}

Move-Item AESetup.msi $env:ToolsDir\AESetup.msi

$arguments = "/i $env:ToolsDir /quiet /lv AEInstallLog.log LICENSE_KEY=`"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjA0NzMzYTQwLTgxMWYtNDhiMi1iOTdmLTliZTBlM2JlNTNkNSIsIm5hbWUiOiJMYXRocm9wIEkuVC4gQ29uc3VsdGluZyIsImlhdCI6MTU4NjM3MDk5NX0.DPHnKha9bv-vQjbmjJFvC0tEz6CmvM6TmjWStHfsbIc`" COMPANY_NAME=`"Penn Thomas, PC`" COMPANY_INITIALS=`"PTPC`" LOCATION_NAME=`"Headquarters`" AGENT_MODE=`"live`""

Start-Process msiexec.exe -ArgumentList $arguments -Wait