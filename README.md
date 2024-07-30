
# Server Status Monitor A bash script to ping a server every 10 minutes and log the status to a file. This script can be easily extended to send SMS notifications using an SMS gateway API. 
## Table of Contents 
- [Introduction](#introduction)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Scheduling with Cron](#scheduling-with-cron)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

## Introduction
  This project contains a bash script to monitor the status of a server by pinging it every 10 minutes. It logs the server status to a specified file. The script can be adapted to send SMS notifications using an SMS gateway API. If the server is down, it sends an sms alert and logs the server status to a specified file.

  
## Features 
- Ping a server to check its status.
- Log the server status to a file.
- Easy to configure and extend for SMS notifications.

## Requirements 
- Bash
- `curl` (for future integration with an SMS API)

## Installation 
1. **Clone the repository:**
   ```sh
   git clone https://github.com/Ali-Ansaripour/Server-Status/blob/main/check_server.sh
   ```
2. **Make the script executable:**
   ```sh
   chmod +x check_server.sh
   ```

## Usage 
1. **Configure the script:**
   Edit `check_server.sh` and update the `SERVER_IP`, `PHONE_NUMBER`, `LOG_FILE`, `SMS_API_URL`,  `API_KEY` variables.
2. **Run the script:**
   ```sh
   ./check_server.sh
   ```

## Configuration 
- `SERVER_IP`: The IP address or domain of the server you want to monitor.
- `PHONE_NUMBER`: The phone number to which the SMS should be sent (for future use).
- `LOG_FILE`: The path to the log file where the server status will be recorded.
- `SMS_API_URL` : The API url o youre SMS gateway.
- `API_KEY` :Youre SMS gateway AP key.

## Scheduling with Cron 
To run the script every 10 minutes, add the following line to your crontab: 
   ```sh
*/10 * * * * /path/to/check_server.sh
```
**Edit the cron tab using : **
```sh
crontab -e
```

## Testing 
1. **Run the script manually to test :**
  ```sh
./check_server.sh
```
2. **Check the log file to verfiy the output:**
   ```sh
   cat /path/to/log_file.log
   ```


## Contributing
Contributions are welcome! 
Please submit a pull request or open an issue to discuss youre ideas.

## License
This project is licensed under thhe MIT License.

