# BCC Anti Cheat
> A RedM standalone Discord Webhook API system.

## How to install
* Download this repo
* Copy and paste `bcc-discord` folder to `resources/bcc-discord`
* Add `ensure bcc-discord` to your `server.cfg` file (ABOVE any scripts that use it)
* Now you are ready to get coding!

## API Docs

### Discord Webhooks

This API allows you to easily add [Discord webhooks](https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks) messages to your scripts.

#### SendMessage
```lua
local discord = exports['bcc-discord'].initiate()

discord.sendMessage('webhookurl', 'My Script', 'https://cdn2.iconfinder.com/data/icons/frosted-glass/256/Danger.png', 'user123', 'this user is awesome')
```

#### embeds
> Add custom [embeds](https://birdie0.github.io/discord-webhooks-guide/discord_webhook.html)
```lua
local discord = exports['bcc-discord'].initiate()

discord.sendMessage('webhookurl', 'My Script', 'https://cdn2.iconfinder.com/data/icons/frosted-glass/256/Danger.png', 'user123', 'this user is awesome'{
  {
    {
      color = 11342935,
      title = 'some times',
      description = 'awesomesauce'
    },
   {
      color = 11342935,
      title = 'some other time',
      description = 'awesomesauce'
    },
  }
})
```
## Need More Support? 
- [Vorp Disord](https://discord.gg/DHGVAbCj7N)

## Requirements
- NONE! It's standalone.