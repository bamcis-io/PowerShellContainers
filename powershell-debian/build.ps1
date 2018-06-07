Param(
    [Parameter(Position = 0, ValueFromPipeline = $true)]
	[ValidateNotNullOrEmpty()]
    [System.String]$Version = "6.0.2"
)

docker build ../powershell-debian -t bamcis/powershell-debian:$Version -t bamcis/powershell-debian:latest --build-arg "VERSION=$Version"