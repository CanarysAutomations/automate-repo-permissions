
Write-Host                  "   _____ _ _   _   _       _            ___        _              _____                _     "  
Write-Host                  "  |  __ (_) | | | | |     | |          / _ \      | |            /  __ \              | |    "  
Write-Host                  "  | |  \/_| |_| |_| |_   _| |__ ______/ /_\ \_   _| |_ ___ ______| /  \/_ __ ___  __ _| |_ ___" 
Write-Host                  "  | | __| | __|  _  | | | | '_ \______|  _  | | | | __/ _ \______| |   | '__/ _ \/ _` | __/ _ \"
Write-Host                  "  | |_\ \ | |_| | | | |_| | |_) |     | | | | |_| | || (_) |     | \__/\ | |  __/ (_| | ||  __/"
Write-Host                  "   \____/_|\__\_| |_/\__,_|_.__/      \_| |_/\__,_|\__\___/       \____/_|  \___|\__,_|\__\___|"
Write-Host                                                                                             
                         

$UserToken = Read-Host -Prompt 'GitHub Token'
$Organization = Read-Host -Prompt 'GitHub Organization'
$ExcelSourceDir = Read-Host -Prompt 'Excel Source'
$WorkSheetName = Read-Host -Prompt 'Specify the worksheet name'

$head = @{

	Authorization = 'Bearer ' + $UserToken
	Accept ="application/vnd.github.nebula-preview+json"
	
}


$excel = New-Object -com Excel.Application

$wbook = $excel.workbooks.open($ExcelSourceDir)


$worksheet = $wbook.Worksheets.Item($WorkSheetName)

$maxrows = ($worksheet.UsedRange.Rows).Count

$wbobject = New-Object -TypeName psobject
$wbobject | Add-Member -MemberType NoteProperty -Name Team -Value $null
$wbobject | Add-Member -MemberType NoteProperty -Name Repository -Value $null
$wbobject | Add-Member -MemberType NoteProperty -Name Permissions -Value $null

for ($i = 2; $i -le $maxrows; $i++)
{
    $wbobject.Team = $worksheet.Cells.item($i,1).Text.ToLower();
    $wbobject.Repository = $worksheet.Cells.item($i,2).Text.ToLower();
    $wbobject.Permissions = $worksheet.Cells.item($i,3).Text.ToLower();

    $repo = $wbobject.Repository
    $team = $wbobject.Team
    $repopermission = $wbobject.Permissions

    $repoparams=@{

         permission=$repopermission

       }

    $newteamname = $team -replace ' ','-'
    
    $body=$repoparams | ConvertTo-Json

    $teamsaccesstoreposrequest=@{

        Uri = "https://api.github.com/orgs/$Organization/teams/$newteamname/repos/$Organization/$repo" 
        Method = "PUT"
        body = $body 
        ContentType = "application/json"
        Headers = $head

    }

    $gitObject= Invoke-RestMethod @teamsaccesstoreposrequest

    $repo_newname= $repo.ToUpper()
    $team_newname= $team.ToUpper()

    Write-Host
    Write-Host "$team_newname Team has been given $repopermission permissions to $repo_newname"

}

