# Step 1: Open "Access work or school" settings
Start-Process "ms-settings:workplace"
Start-Sleep -Seconds 3  # Wait for the settings window to open

# Step 2: Use SendKeys to navigate and select "Enroll only in device management"
Add-Type -AssemblyName System.Windows.Forms

# Simulate TAB key presses to navigate to "Enroll only in device management"
for ($i = 0; $i -lt 4; $i++) {
    [System.Windows.Forms.SendKeys]::SendWait("{TAB}")
    Start-Sleep -Milliseconds 500  # Small delay to ensure accurate navigation
}

# Press ENTER to select "Enroll only in device management"
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 3

# Step 3: Enter the email address
$emailAddress = "1234@swapfiets.com"
foreach ($char in $emailAddress.ToCharArray()) {
    [System.Windows.Forms.SendKeys]::SendWait($char)
    Start-Sleep -Milliseconds 100  # Small delay between each character
}

# Press TAB to move to the "Next" button and press ENTER
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5  # Slightly longer delay for the next page to load

# Step 4: Navigate to the server URL input box
# Press TAB to focus on the email field, then use DOWN to move to the server input field
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Milliseconds 500
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
Start-Sleep -Milliseconds 500

# Wait briefly before entering the server URL to ensure the correct field is focused
Start-Sleep -Milliseconds 1000

# Step 5: Enter the server URL without pressing ENTER immediately
$serverUrl = "https://n736.meraki.com/"
foreach ($char in $serverUrl.ToCharArray()) {
    [System.Windows.Forms.SendKeys]::SendWait($char)
    Start-Sleep -Milliseconds 100  # Small delay between each character
}

# Add another short delay before pressing TAB to ensure the input is registered
Start-Sleep -Milliseconds 500

# Press TAB to move to the "Next" button on the server URL page and press ENTER
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Milliseconds 500

# Press ENTER to proceed to the Meraki network key page
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 5  # Wait for the Meraki network key page to load

# Step 6: Navigate to the network key input box
# Use TAB or DOWN keys to navigate to the correct input field (experiment with this as needed)
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Milliseconds 500

# Step 7: Enter the network ID
$networkID = "146-332-3933"
foreach ($char in $networkID.ToCharArray()) {
    [System.Windows.Forms.SendKeys]::SendWait($char)
    Start-Sleep -Milliseconds 100  # Small delay between each character
}

# Step 8: Click "Register" by pressing ENTER
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")

Write-Host "Enrollment process completed automatically."
