# WeeklyDutyTelegramNotifier

This project fetches the name of the weekly duty officer from a database and sends a notification message via Telegram.

## Features
- Retrieves the duty officer's name from a database.
- Sends a weekly notification message to a specified Telegram chat.
- Uses Bash scripting for automation.

## Usage
1. Set up your database with the weekly duty officer's information.
2. Configure your Telegram bot with the bot token.
3. Replace `YOUR_BOT_TOKEN`, `YOUR_CHAT_ID`, and adjust any other necessary variables in the Bash script.
4. Run the Bash script to send the notification.

## Requirements
- Bash
- Telegram Bot API
- Access to a database with the duty officer's information

## Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/WeeklyDutyTelegramNotifier.git
   cd WeeklyDutyTelegramNotifier
   
2. Configure your Telegram bot:
    Obtain a bot token from BotFather on Telegram.
    Find your chat ID using methods like curl requests to Telegram's API or other methods.

3. Configure the Bash script ('send_notification.sh'):
   #!/bin/bash

   BOT_TOKEN="YOUR_BOT_TOKEN"
   CHAT_ID="YOUR_CHAT_ID"
   DUTY_OFFICER=$(your_database_query_to_get_duty_officer_name)

   MESSAGE="This week's duty officer is $DUTY_OFFICER."

   curl -s -X POST https://api.telegram.org/bot$BOT_TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="$MESSAGE"

4. Run the script:
   ./send_notification.sh

5. Verify the notification in your specified Telegram chat.
   #!/bin/bash

   BOT_TOKEN="YOUR_BOT_TOKEN"
   CHAT_ID="YOUR_CHAT_ID"
   DUTY_OFFICER="John Doe"

   MESSAGE="This week's duty officer is $DUTY_OFFICER."

   curl -s -X POST https://api.telegram.org/bot$BOT_TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="$MESSAGE"

  
