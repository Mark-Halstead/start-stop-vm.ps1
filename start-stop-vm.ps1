# Define parameters
$vmName = Read-Host -Prompt "Enter the VM name"
$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
$action = Read-Host -Prompt "Enter the action (Start, Stop, Restart)"

# Validate the action input
if ($action -eq "Start") {
    Write-Host "Starting the VM..." -ForegroundColor Green
    Start-AzVM -ResourceGroupName $resourceGroupName -Name $vmName
} elseif ($action -eq "Stop") {
    Write-Host "Stopping the VM..." -ForegroundColor Yellow
    Stop-AzVM -ResourceGroupName $resourceGroupName -Name $vmName -Force
} elseif ($action -eq "Restart") {
    Write-Host "Restarting the VM..." -ForegroundColor Cyan
    Restart-AzVM -ResourceGroupName $resourceGroupName -Name $vmName
} else {
    Write-Host "Invalid action. Please choose Start, Stop, or Restart." -ForegroundColor Red
}
