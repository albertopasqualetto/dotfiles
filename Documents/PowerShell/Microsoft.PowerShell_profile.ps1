### ALIASES ###
function SSHOracleVM {
	ssh ubuntu@129.152.19.184
}
function PyActivate {
	.\venv\Scripts\activate.ps1
}
function wgu {
	winget upgrade $args
}
function notepadpp {
	start notepad++ $args
}
function npp {
	[String]$arg = $args
	notepadpp $arg
}
function grep {
	Select-String $args
}
function which {
	where [String]$args
}


### STARSHIP ###
function Invoke-Starship-TransientFunction {
  &starship module character
}

function Invoke-Starship-PreCommand {
  $host.ui.RawUI.WindowTitle = "$env:USERNAME@$env:COMPUTERNAME`: $pwd `a"
}

Invoke-Expression (&starship init powershell)

Enable-TransientPrompt

