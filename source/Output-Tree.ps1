param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [String]
    $targetPath
)

$logPath="C:\Users\xxxx\"

$dateTime = (Get-Date).ToString("yyyyMMddHHmmss")
$treeFile = $logPath + $dateTime + "_output.txt"
tree /F "" + $targetPath + "" > $treeFile

notepad $treeFile