# Powershell script seed.
# Use this to get started quickly, and customize it to your needs.

function Usage {
Write-Host 'This is a powershell script seed. Customize it to get started quickly with powershell.

Options:
    -h  Prints this help message.
    -t  Specify the type of seed.';
}
Usage;
$wichOption = Read-Host -Prompt ' ';
$seed = 'tomato';

Switch ($wichOption) {
    't' {
        $tmp = Read-Host -Prompt ' ';
        $seed = $tmp;
    }
    'h' {
        Usage;
        Pause
    }
    default {}
}

#  Your code goes here

Write-Host 'You planted a ' -nonewline;
Write-Host $seed -foregroundcolor 'Cyan' -nonewline;
Write-Host ' seed.'
