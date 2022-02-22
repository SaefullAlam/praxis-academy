$container = Get-ChildItem -Recurse

ForEach($item in $container){
	if($item.Extension -eq ".java"){
		Write-Host "Ada file Java pada direktori" $item.DirectoryName}
}
pause