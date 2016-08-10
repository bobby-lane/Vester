#requires -Modules Pester
#requires -Modules VMware.VimAutomation.Core


[CmdletBinding()]
Param(
    [Parameter(Mandatory = $true,Position = 0,HelpMessage = 'Remediation toggle')]
    [ValidateNotNullorEmpty()]
    [switch]$Remediate,
    [Parameter(Mandatory = $true,Position = 1,HelpMessage = 'Path to the configuration file')]
    [ValidateNotNullorEmpty()]
    [string]$Config
)

Process {
    # Tests
    ###Describe -Name '!!! Configuration: !!!' -Fixture {
    # Variables
    . $Config
    ###[type]$var1 = $config.!!!
    ###[type]$var2 = $config.!!!

    foreach ($server in (Get-VMHost -Name $config.scope.host)) 
    {
        ###It -name '!!!' -test {
            ###$value = !!!TestMe
            try 
            {
                ###$value | Should Be !!!SomethingElse
            }
            catch 
            {
                if ($Remediate) 
                {
                    Write-Warning -Message $_
                    ###Write-Warning -Message "Remediating !!!" 
                }
                else 
                {
                    throw $_
                }
            }
        }
    }
}
