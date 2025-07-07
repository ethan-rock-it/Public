#Retrieve Computer Name

	$computername = hostname

#get serial number & output to a variable $serialnumber

    $serialnumber = (get-wmiobject -class win32_bios).serialnumber

#New Name
	
	$newcomputername = "RICMEX-$serialnumber"

#check current number of computer

    if($computername -ne $newcomputername){
        rename-computer $newcomputername 
    }

	