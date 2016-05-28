local Kick = true;
local Warn = false;

do


local function run(msg, matches)
    
    if ( kick == true ) then
        Warn = false;
    elseif ( Warn == true ) then
        Kick = false;
    end


    if (  is_realm(msg) and is_admin(msg)or is_sudo(msg) or is_momod(msg) )  then
        return
    end

    local data = load_data(_config.moderation.data)

    local chat = get_receiver(msg)


    local user = "user#id"..msg.from.id

    if ( data[tostring(msg.to.id)]['settings']['Locksmoke'] == "yes" ) then
        if ( string.find(matches[1], "🚬")) then

      if ( Kick == true ) then

        send_large_msg(chat, "ممنوع التدخين هنا 💢")
        chat_del_user(chat, user, ok_cb, true)
      elseif ( Warn   == true ) then
        send_large_msg( get_receiver(msg), "Ù…Ù…Ù†ÙˆØ¹ Ø§Ù„ØªØ¯Ø®ÙŠÙ† Ù‡Ù†Ø§ðŸšª @" .. msg.from.username )
      end
    end
    end

end
 
return {
  patterns = {
    "(.*)",
  },
  run = run
}

end