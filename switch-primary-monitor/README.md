# switch-primary-monitor

Executing this PowerShell script will set non-primary monitor to be primary.
Only works if you use 2 monitors.

Requires [DisplayConfig](https://github.com/MartinGC94/DisplayConfig/tree/main) module.
You can install module using the following command:
```
Install-Module DisplayConfig
```

## FAQ
Q: I can't run the script, it says something about "Running scripts is not allowed on this system"?
A: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.4
