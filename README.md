# acit2420-assignment3-part1
## 1. What is the benefit of creating a system user for this task rather than using a regular user or root?
Creating a system user for this task is better because this kind of user is only given permission to access specific files, making the system interaction more secure. 
Benefits:

## 2. How will you verify that the timer is active and that the service runs successfully? What commands can you run to check logs and to confirm the service's execution?
You can use this command to check the status of the timer: sudo systemctl status generate-index.timer
You can use this command to check the status of the service: sudo systemctl status generate-index.service
This command will show you the logs of the service: sudo journalctl -u generate-index.service

## 3. Why is it important to use a separate server block file instead of modifying the main nginx.conf file directly?
It's important to use a separate server block file because it's more secure, easy to manage and easy to troubleshoot if needed. You might accidentally tamper with the main configuration file if you edit it directly. 

## 4. How can you check the status of the nginx services and test your nginx configuration?
You can use this command to check the status: sudo systemctl status nginx
You can use this command to test the configuration: sudo nginx -t
Make sure to reload to enable changes with this command: sudo systemctl reload nginx

## 5. How can you check the status of your firewall?
You can use this command to check the status of the firewall: sudo ufw status





