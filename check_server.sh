#!/bin/bash

#Conf
SERVER_IP="your server ip or domain:"
PHONE_NUMBER="youre phone number "
SMS_API_URL="https://...."
API_KEY="youre sms api key"
LOG_FILE="/path/to/log_file.log"

#Func to send sms
send_sms() {
  local message=$1
  curl -X POST "$SMS_API_URL " \ -H "Content-Type: application/Json" 
    \ -d "{\"apikey\": \"$API_KEY\", 
    \"number\": \"$PHONE_NUMBER\",
    \"message\": \"$message\" } "
}

#ping server
ping -c 1 $SERVER_IP  &> /dev/null
if [ $? -ne 0 ];
then
send_sms "ALERT : server at $SERVER__IP is DOWN."
echo "ALERT:  server at $SERVER__IP is DOWN." >> $LOG_FILE
else 
echo " Server at $SERVER_IP is UP." >> $LOG_FILE
fi
