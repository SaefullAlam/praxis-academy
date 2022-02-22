$container = Get-ChildItem -Recurse

ForEach($item in $container){
	if($item.Extension -eq ".java"){
		Write-Host "Ada file Java pada direktori" $item.DirectoryName
		Write-Host $item.Name "ada, diganti namanya?(y/t)"
		$answer = Read-Host -Prompt ' '
        if($answer -eq "y"){
        $newname = Read-Host -Prompt 'Input nama baru'
        Rename-Item -Path $item.FullName -NewName $newname}
		}
}
pause