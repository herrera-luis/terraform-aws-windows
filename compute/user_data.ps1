<powershell>
Start-Process -FilePath "docker" -ArgumentList "run -d -p 80:4321 herreraluis/dotnetcore-app" -NoNewWindow -Wait
Sleep -Seconds 20
</powershell>