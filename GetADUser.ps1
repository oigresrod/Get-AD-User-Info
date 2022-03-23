$file = Import-Csv -Path "Seed file location" | select -ExpandProperty username

foreach($person in $file){

    #retrieving the contents of the username in Active Directory and creating an object
    $employee = Get-ADUser $person -Properties *
    #assigning the wanted attributes from AD
    $status = $employee.enabled
    $name = $employee.name
    $telephoneNumber = $employee.telephoneNumber

    #creating a hash table and assigning the contents of each iteration to the hash table and then APPENDING to the file
    New-Object -TypeName PSCustomObject -Property @{
        Name = $FullName
        Status = $enabled
	    TelephoneNumber = $TelephoneNumber
        Username = $employee
        } | Select-Object 'Name', 'Status', 'TelephoneNumber', 'Username' | Export-Csv -Path "file location to save contents" -NoTypeInformation -Append -Force

}
