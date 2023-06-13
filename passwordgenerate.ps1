<#
Author: DVBNL
Generate random passwords using options for including numbers or symbols.
It combines a random color and animal name and appends random numbers and symbols based on the provided switches.

Feel free to use this function in your code!
#>
function GeneratePassword {
    param (
        [Parameter(Position = 0)]
        [switch]$IncludeNumbers,

        [Parameter(Position = 1)]
        [switch]$IncludeSymbols
    )

    # LIST OF AVAILABLE CHARACTER SETS
    $Colors = Get-Content -Path '.\wordlist-english\colours.txt'
    $Animals = Get-Content -Path '.\wordlist-english\animals.txt'
    $Numbers = @('0', '1', '2', '3', '4', '5', '6', '7', '8', '9')
    $Symbols = @('@', '$', '%', '&', '!')

    # PICK RANDOM ENTRY FROM CHARACTER SETS
    $RandomColor = Get-Random -InputObject $Colors
    $RandomAnimal = Get-Random -InputObject $Animals

    # COMBINE COLOR AND ANIMAL NAME
    $Password = "$RandomColor$RandomAnimal"

    # ADD RANDOM SYMBOLS IF SWITCH IS PROVIDED
    if ($IncludeSymbols) {
        $RandomSymbol = Get-Random -InputObject $Symbols -Count 1
        $Password += $RandomSymbol -join ''
    }

    # ADD RANDOM NUMBERS IF SWITCH IS PROVIDED
    if ($IncludeNumbers) {
        $RandomNumber = Get-Random -InputObject $Numbers -Count 4
        $Password += $RandomNumber -join ''
    }

    return $Password
}

# USAGE FUNCTION
GeneratePassword -IncludeSymbols -IncludeNumbers
GeneratePassword -IncludeSymbols -IncludeNumbers
GeneratePassword -IncludeSymbols -IncludeNumbers
GeneratePassword -IncludeSymbols -IncludeNumbers
GeneratePassword -IncludeSymbols -IncludeNumbers
GeneratePassword -IncludeSymbols -IncludeNumbers
GeneratePassword -IncludeSymbols -IncludeNumbers
GeneratePassword -IncludeSymbols -IncludeNumbers