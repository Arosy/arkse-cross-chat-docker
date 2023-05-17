#!/bin/bash

if [ ! -d "/var/app" ]; then
  echo "cannot find local app directory .."
  exit 1
fi

if [ ! -f "/var/app/CrossArkChat.dll" ]; then
  echo "cannot find app binaries .."
  exit 1
fi

if [ ! -f "/var/app/Config/_configuration.json" ]; then
cat << 'EOF' > /var/app/Config/_configuration.json
//For all info on config visit https://github.com/spikeydragoon/Cross-Ark-Chat and look at the readme file as it goes over all config information.
// DO NOT change anything in the Rcon settings unless you know what you are doing!!!
{
  "ApplicationSettings": {
    "VersionCheckUrl": "https://raw.githubusercontent.com/spikeydragoon/Cross-Ark-Chat/master/version.txt",
    "PatchNotesCheckUrl": "https://raw.githubusercontent.com/spikeydragoon/Cross-Ark-Chat/master/CrossArkChatPatchNotes.txt",
    "LogErrors": true,
    "LogChat": true,
    "LogAdminCommands": true,
    "LogTribeLogs": true,
    "UseDiscord": true,
    "DiscordLogSeverity": "info"
  },

  "Servers": [
    {
      "NameTag": "Chat1",
      "IP": "0.0.0.0",
      "RconPort": 0,
      "QueryPort": 0,
      "Password": "Password",
      "SettingToUse": 1,
      "Active": false
    },
    {
      "NameTag": "Chat2",
      "IP": "0.0.0.0",
      "RconPort": 0,
      "QueryPort": 0,
      "Password": "Password",
      "SettingToUse": 2,
      "Active": false
    }
  ],

  "ServerSettings": [
    {
      "SettingNumber": 1,
      "ServerTag": "",
      "ServerPlayerTag": ":",
      "PlayerChatTag": ":",
      "ChatTag": "",
      "HideNameTag": false,
      "DiscordChannelId": 0
    },
    {
      "SettingNumber": 2,
      "ServerTag": "",
      "ServerPlayerTag": ":",
      "PlayerChatTag": ":",
      "ChatTag": "",
      "HideNameTag": false,
      "DiscordChannelId": 0
    }
  ],

  "PrefixGroups": [
    {
      "ChatPrefix": "/prefix",
      "ServerList": [
        "chat1",
        "chat2"
      ]
    },
    {
      "ChatPrefix": "/prefix2",
      "ServerList": [
        "chat1",
        "chat2"
      ]
    }
  ],

  "Tribes": [
    {
      "TribeId": "00000",
      "SettingToUse": 1,
      "Active": false
    },
    {
      "TribeId": "00000",
      "SettingToUse": 2,
      "Active": false
    }
  ],

  "TribeSettings": [
    {
      "SettingNumber": 1,
      "ShowFullTribeLog": false,
      "ShowTribeName": false,
      "ShowServerName": true,
      "ShowTribeId": false,
      "EmbedTribeLog": true,
      "DiscordChannelId": 0
    },
    {
      "SettingNumber": 2,
      "ShowFullTribeLog": false,
      "ShowTribeName": false,
      "ShowServerName": true,
      "ShowTribeId": false,
      "EmbedTribeLog": true,
      "DiscordChannelId": 0
    }
  ],

  "GameCommands": [
    {
      "Command": "!discord",
      "CommandReply": "https://discord.gg/",
      "Active": false
    },
    {
      "Command": "rules",
      "CommandReply": "These are the rules.",
      "Active": false
    },
    {
      "Command": "/ping",
      "CommandReply": "Pong!",
      "Active": false
    }
  ],

  "CustomTagList": [
    "ACM[CMD]",
    "SERVER: ACM[CMD]"
  ],

  "RconSettings": {
    "NoResponceTag": "Server received, But no response!!",
    "NoPlayerTag": "No Players Connected",
    "ServerRepeatTag": "SERVER:",
    "AdminCMDTag": "AdminCmd:",
    "TribeLogTag": "Tribe",
    "GetChatCmd": "getchat",
    "ListPlayersCmd": "ListPlayers",
    "ListPlayerCheckTimeInMs": 10000,
    "GetChatTimeInMs": 1000,
    "PlayerCountCheckTimeInMs": 30000,
    "VersionCheckTimeInMs": 3600000,
    "RconSendTimeoutInMs": 3000,
    "RconReceiveTimeoutInMs": 10000,
    "RconConnectionRetrys": 1
  },

  "EmbeddedTribeLogColorSettings": [
    {
      "LogType": "killed",
      "LogColor": "ff2121",
      "RoleToPing": "none"
    },
    {
      "LogType": "demolished",
      "LogColor": "ff2121",
      "RoleToPing": "none"
    },
    {
      "LogType": "claimed",
      "LogColor": "03f413",
      "RoleToPing": "none"
    },
    {
      "LogType": "unclaimed",
      "LogColor": "ff2121",
      "RoleToPing": "none"
    },
    {
      "LogType": "tamed",
      "LogColor": "03f413",
      "RoleToPing": "none"
    },
    {
      "LogType": "destroyed",
      "LogColor": "ff7400",
      "RoleToPing": "none"
    },
    {
      "LogType": "froze",
      "LogColor": "d8ddd8",
      "RoleToPing": "none"
    },
    {
      "LogType": "downloaded",
      "LogColor": "03f413",
      "RoleToPing": "none"
    },
    {
      "LogType": "uploaded",
      "LogColor": "ff2121",
      "RoleToPing": "none"
    },
    {
      "LogType": "starved",
      "LogColor": "ff2121",
      "RoleToPing": "none"
    }
  ],

  "ChatSettings": {
    "UseCustomTags": false,
    "SendChatToServers": true,
    "ShowAdminCommands": false,
    "UseGameCommands": false,
    "UsePrefixToSendChat": false,
    "UseWordReplacementList": false,
    "AllServersChatPrefix": "/all"
  },

  "DiscordSettings": {
    "DiscordBotSettings": {
      "CommandPrefix": "d!",
      "DiscordBotToken": "BotToken",
      "IgnoreOtherBots": true,
      "ShowDiscordNickName": true
    },

    "ServerChatSettings": {
      "ChatDiscordChannelID": 0,
      "SendServerChatToOwnChannel": false
    },

    "DiscordChatSettings": {
      "DiscordChatPrefix": "Discord",
      "SendChatToDiscord": true,
      "UsePrefixToSendToDiscord": false,
      "PrefixToSendToDiscord": "/discord"
    },

    "NotificationSettings": {
      "VersionDiscordChannelId": 0,
      "PatchNotesDiscordChannelId": 0,
      "JoinLeaveNotificationsDiscordChannelID": 0,
      "UseVersionChecker": false,
      "UsePatchNotesChecker": false,
      "UseJoinLeaveNotifications": false,
      "UsePlayerCountChannelUpdater": false,
      "SendJoinLeaveNotificationsToServerOwnChannel": false
    },

    "AdminCommandSettings": {
      "AdminCommandsDiscordChannelID": 0,
      "SendAdminCommandsToOwnChannel": false
    },

    "TribeLogSettings": {
      "TribeLogsDiscordChannelID": 0,
      "ShowTribelogs": false,
      "ShowFullTribeLog": false,
      "ShowTribeId": true,
      "ShowTribeName": true,
      "ShowServerName": true,
      "EmbedTribeLog": true,
      "SendTribeLogsToOwnChannel": false
    },

    "SupportSettings": {
      "SupportDiscordChannelID": 0,
      "UseSupportPrefix": false,
      "PingRoleName": false,
      "ReplyToSupportPing": true,
      "SupportPrefix": "/help",
      "SupportRoleToPing": "rolename",
      "SupportPingReply": "Your support ticket has been sent."
    }
  }
}
EOF
fi

if [ ! -f "/var/app/Config/_discordroles.json" ]; then
cat << 'EOF' > /var/app/Config/_discordroles.json
//Discord Roles must be exzactly like in discord caps and all.
//list of known commands.
//Rconcommand - allows any custom rcon command to be ran for ark beyond api.
//AllowPlayerToJoinNoCheck - Adds the specified player to the server's whitelist.
//BanPlayer - Add the specified player to the server's banned list.
//Broadcast - Broadcast a message to all players on the server.
//DestroyAll - Destroys ALL creatures of the specified class.
//DestroyAllEnemies - Destroys all non-player creatures on the map, including tamed creatures. This does not prevent new ones from spawning as usual.
//DestroyStructures - Destroys all structures owned by all players on the map.
//DestroyWildDinos - Destroys all untamed creatures on the map. Useful for helping newly-released creatures to spawn.
//DisallowPlayerToJoinNoCheck - Removes the specified player from the server's whitelist.
//DoExit - Shuts down the server as soon as possible.
//GetChat - Returns the latest chat buffer (the same amount that the clients see).
//GiveItemNumToPlayer - Adds the specified item to the player's inventory (or its blueprint) in the specified quantity and with the specified quality.
//GiveExpToPlayer - Gives the specified player the specified amount of experience points.
//KickPlayer - Forcibly disconnect the specified player from the server.
//KillPlayer - Kills the specified player.
//ListPlayers - List all connected players and their Steam IDs.
//PlayersOnly - Stops all creature movement in the game world and halts crafting. Players can still move normally. Repeat the command to disable its effects.
//RenamePlayer - Renames the player specified by their in-game string name.
//RenameTribe - Renames the tribe specified by it's string name.
//SaveWorld - Forces the server to save the game world to disk in its current state.
//ServerChat - Sends a chat message to all currently connected players.
//ServerChatTo - Sends a direct chat message to the player specified by their int64 encoded steam id.
//ServerChatToPlayer - Sends a direct chat message to the player specified by their in-game player name.
//SetMessageOfTheDay - Sets the server's 'message of the day', displayed to players when they connect to it.
//SetTimeOfDay - Sets the game world's time of day to the specified time.
//ShowMessageOfTheDay - Displays the message of the day.
//Slomo - Sets the game speed multiplier. Lower values slow time, change back to 1 to set back to normal.
//UnBanPlayer - Remove the specified player from the server's banned list.
//PurgeMessage - Deletes a set number of discord messages. Max of 100 at a time and it will not delete messages older than 2 weeks.
//StartChat - Starts CrossArkChat. Note CrossArkChat auto starts so unless you run stop first you shouldnt run this command.
//StopChat - Stops CrossArkChat.
//RestartChat - Stops then Starts CrossArkChat.
//ClearChat - Deletes all pending messages that are in the que(not sent).
//RebootProgram - Restarts the program.
//ServerList - List server info for your servers marked as active. This also includes direct connection link.
//ServerInfo - Polls the given server for information.
{
  "DiscordRoles": {
    "Rconcommand": "rolename",
    "AllowPlayerToJoinNoCheck": "rolename",
    "BanPlayer": "rolename",
    "Broadcast": "rolename",
    "DestroyAll": "rolename",
    "DestroyAllEnemies": "rolename",
    "DestroyStructures": "rolename",
    "DestroyWildDinos": "rolename",
    "DisallowPlayerToJoinNoCheck": "rolename",
    "DoExit": "rolename",
    "GetChat": "rolename",
    "GiveItemNumToPlayer": "rolename",
    "GiveExpToPlayer": "rolename",
    "KickPlayer": "rolename",
    "KillPlayer": "rolename",
    "ListPlayers": "rolename",
    "PlayersOnly": "rolename",
    "RenamePlayer": "rolename",
    "RenameTribe": "rolename",
    "SaveWorld": "rolename",
    "ServerChat": "rolename",
    "ServerChatTo": "rolename",
    "ServerChatToPlayer": "rolename",
    "SetMessageOfTheDay": "rolename",
    "SetTimeOfDay": "rolename",
    "ShowMessageOfTheDay": "rolename",
    "Slomo": "rolename",
    "UnBanPlayer": "rolename",
    "PurgeMessage": "rolename",
    "StartChat": "rolename",
    "StopChat": "rolename",
    "RestartChat": "rolename",
    "ClearChat": "rolename",
    "RebootProgram": "rolename",
    "ServerList": "rolename",
    "ServerInfo": "rolename",
    "ServerBlend": "@everyone"
  }
}
EOF
fi


if [ ! -f "/var/app/Config/_timedcommands.json" ]; then
cat << 'EOF' > /var/app/Config/_timedcommands.json
{
  "TimedCommands": [
    {
      "Name": "Command1",
      "Servers": [
        "ServerNameTag1",
        "ServerNameTag2"
      ],
      "Commands": [
        {
          "Command": "messageoftheday",
          "Type": "Command"
        }
      ],
      "Active": false,
      "Frequency": "minute",
      "Timespan": "30",
      "TimeOffset": "00:00:00"
    },
    {
      "Name": "Command2",
      "Servers": [
        "ServerNameTag1",
        "ServerNameTag2"
      ],
      "Commands": [
        {
          "Command": "About to save the world",
          "Type": "Broadcast"
        },
        {
          "Command": "saveworld",
          "Type": "Command"
        }
      ],
      "Active": false,
      "Frequency": "hour",
      "Timespan": "1",
      "TimeOffset": "00:00:00"
    },
    {
      "Name": "Command3",
      "Servers": [
        "ServerNameTag1",
        "ServerNameTag2"
      ],
      "Commands": [
        {
          "Command": "About to wipe all wild dinos",
          "Type": "Broadcast"
        },
        {
          "Command": "wilddinowipe",
          "Type": "Command"
        }
      ],
      "Active": false,
      "Frequency": "day",
      "Timespan": "1",
      "TimeOffset": "00:00:00"
    }
  ]
}
EOF
fi

if [ ! -f "/var/app/Config/_translation.json" ]; then
cat << 'EOF' > /var/app/Config/_translation.json
{
  "RconReplys": {
    "PickAServer": "Pick a Server by number or say all to run the command on all servers.",
    "PickAllServers": "all",
    "ReplyWithNumberStart": "Reply with the number",
    "ReplyWithNumberEnd": "to select this server",
    "CommandSent": "Command Sent",
    "CommandSentTo": "Command Sent to",
    "AllCommandsSent": "All Commands Sent",
    "NoReplyData": "No data returned from the server. This is normal depending on the command",
    "NoServerSelected": "You didn't select a server number in the list.",
    "NoSelectionTimeout": "You did not reply before the timeout.",
    "WrongServerName": "Command not sent. Make sure you typed the Map name exzactly like it is listed in the config."
  },

  "CrossArkChatReplys": {
    "ChatStart": "Chat started",
    "ChatStartFailed": "Chat crashed while starting",
    "ChatStop": "Chat stopped",
    "ChatClear": "Chat cleared"
  },

  "NotificationReplys": {
    "PlayerJoinStart": "Player",
    "PlayerJoinMiddle": "joined the",
    "PlayerJoinEnd": "server",
    "PlayerLeftStart": "Player",
    "PlayerLeftMiddle": "left the",
    "PlayerLeftEnd": "server",
    "PlayerCountStart": "",
    "PlayerCountMiddle": "/",
    "MaxPlayerCount": "100",
    "PlayerCountEnd": "",
    "VersionCheckStart": "New CrossArkChat version",
    "VersionCheckEnd": "is now avaiable",
    "PatchNotesStart": "Patch notes for new cross ark chat version",
    "PatchNotesEnd": ""
  },

  "DiscordReplys": {
    "DeleteMaxStart": "You can only delete a max of",
    "DeleteMaxEnd": "messages at a time.",
    "DeletedOne": "1 message has been deleted.",
    "DeletedMessages": "messages have been deleted."
  },

  "CommandHelpReplys": {
    "CommandList": "These are the commands you can use",
    "NoCommandFoundStart": "Sorry, couldn't find a command like",
    "NoCommandFoundEnd": ".",
    "SimularCommand": "Here are some commands like",
    "CommandUsage": "Usage:",
    "CommandSummary": "Summary:"
  },

  "ServerQueryReplys": {
    "NoInfoFoundStart": "(",
    "NoInfoFoundMiddle": ") Call to the server",
    "NoInfoFoundEnd": "failed.",
    "ServerInfoMap": "Map:",
    "ServerInfoPlayerOnline": "Players Online:",
    "ServerInfoMaxPlayer": "Max Players:",
    "ServerInfoPing": "Ping:",
    "ServerInfoConnect": "Connect:"
  }
}
EOF
fi


if [ ! -f "/var/app/Config/_wordfilter.json" ]; then
cat << 'EOF' > /var/app/Config/_wordfilter.json
//If you dont want to use the word filter then leave the examples or program will not work.
//Always make sure to have a , after every word except the last.
{
  "WordFilterList": [
    "exampleword",
    "examplewords"
  ],

  "WordReplacementList": [
    {
      "OldWord": "ö",
      "NewWord": "o"
    },
    {
      "OldWord": "raptor",
      "NewWord": "dragon"
    }
  ]
}
EOF
fi

dotnet /var/app/CrossArkChat.dll