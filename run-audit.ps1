npm audit
if($?) {
	# True, last operation succeeded
	Write-Output "no problems with vulnerabilities"
}

if (!$?) {
	# Not True, last operation failed
	Write-Output "there are vulnerabilities"
}