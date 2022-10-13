Discord = {}

Discord.sendNewMessage = function (name, description, embeds, webhookurl, webhookname, webhookavatar)
    local wname =  webhookname
    local avatar = webhookavatar
    local webhook = webhookurl

    if embeds == nil then
        embeds = {{
            color = 11342935,
            title = name,
            description = description
        }}
    end

    local payload = {
        username = wname,
        avatar_url = avatar,
        type = 'rich',
        embeds = embeds
    }

    PerformHttpRequest(webhook, function(err, text, headers)end, 'POST', json.encode(payload), {
        ['Content-Type'] = 'application/json'
    })
end

RegisterServerEvent('bcc-discord-sendmessage')
AddEventHandler('bcc-discord-sendmessage', function(webhookurl, webhookname, webhookavatar, name, description, embeds)
    Discord.sendNewMessage(name, description, embeds, webhookurl, webhookname, webhookavatar)
end)

exports('initiate',function()
    local self = {}

    self.sendMessage = function(webhookurl, webhookname, webhookavatar, name, description, embeds)
        TriggerClientEvent('bcc-discord-sendmessage', webhookurl, webhookname, webhookavatar, name, description, embeds)
    end

    return self
end)