# Deploy Home Assistant to Raspberry Pi
$PiUser = "bast"
$PiIP = "192.168.1.141"
$RemotePath = "/home/bast/homeassistant"

Write-Host "Deploying to $PiUser@$PiIP..."

# 1. Create directory on Pi
ssh "${PiUser}@${PiIP}" "mkdir -p $RemotePath"

# 2. Copy docker-compose.yml
scp docker-compose.yml "${PiUser}@${PiIP}:$RemotePath/docker-compose.yml"

# 3. Start Docker Container
Write-Host "Starting Home Assistant..."
ssh "${PiUser}@${PiIP}" "cd $RemotePath && docker compose up -d"

Write-Host "Deployment Complete!"
Write-Host "Access Home Assistant at http://$PiIP:8123"
