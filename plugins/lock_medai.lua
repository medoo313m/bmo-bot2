 --[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄       dev ½  🔴 @iq_plus 🔴 
         ch { @OSCARBOTv2 } 
            ▀▄ ▄▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]] 

 do 

local function pre_process(msg) 
    --Checking mute 
    local hash = 'mate:'..msg.to.id 
    local ali = 'mate:'..msg.to.id 
    local oscar = 'mate:'..msg.to.id 
    local bot = 'mate:'..msg.to.id 
    local oscarteam = 'mate:'..msg.to.id 
    local oscarbot = 'mate:'..msg.to.id 
    if redis:get(hash) and not is_momod(msg) and msg.media  then 
            delete_msg(msg.id, ok_cb, true) 
            end 
    if redis:get(ali) and not is_momod(msg) and msg.media and msg.media.type == 'photo' then 
            delete_msg(msg.id, ok_cb, true) 
            end 
    if redis:get(oscar) and not is_momod(msg) and msg.media and msg.media.type == 'audio' then 
            delete_msg(msg.id, ok_cb, true) 
            end 
    if redis:get(bot) and not is_momod(msg) and msg.media and msg.media.type == 'video' then 
            delete_msg(msg.id, ok_cb, true) 
            end 

    if redis:get(oscarteam) and not is_momod(msg) and msg.media and msg.media.type == 'unsupported' then 
            delete_msg(msg.id, ok_cb, true) 
            end 

    if redis:get(oscarbot) and not is_momod(msg) and msg.media and msg.media.type == 'document' then 
            delete_msg(msg.id, ok_cb, true) 
        end 
        return msg  --By @iq_plus and @oscarbotv2 
    end 

local function oscar(msg, matches) 
    chat_id =  msg.to.id 
    if matches[1] == 'media k' then 
                    local hash = 'mate:'..msg.to.id 
                    redis:set(hash, true) 
                    return "تم كتم الوسائط صور ، صوت ، فيديو ...الخ" 

  elseif is_momod(msg) and matches[1] == 'media u' then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
      return "تم الغاء كتم الوسائط" 

  elseif is_momod(msg) and matches[1] == 'photo k' then 
      local ali = 'mate:'..msg.to.id 
      redis:set(ali, true) 
      return "تم منع الصور" 

  elseif is_momod(msg) and matches[1] == "photo u" then 
      local ali = 'mate:'..msg.to.id 
      redis:del(ali) 
      return "تم الغاء كتم الصور" 

  elseif is_momod(msg) and matches[1] == "audio k" then 
      local oscar = 'mate:'..msg.to.id 
      redis:set(oscar, true) 
      return "تم منع الصوتيات" 

  elseif is_momod(msg) and matches[1] == "audio u" then 
      local oscar = 'mate:'..msg.to.id 
      redis:del(oscar) 
      return "تم الغاء كتم صوتيات" 

  elseif is_momod(msg) and matches[1] == "video k" then 
      local bot = 'mate:'..msg.to.id 
      redis:set(bot, true) 
      return "تم كتم الفيديوهات" 

  elseif is_momod(msg) and matches[1] == "video u" then 
      local bot = 'mate:'..msg.to.id 
      redis:del(bot) 
      return "تم الغاء كتم الفيديوهات" 

  elseif is_momod(msg) and matches[1] == "sticker k" then 
      local oscarteam = 'mate:'..msg.to.id 
      redis:set(oscarteam, true) 
      return "تم منع الملصقات" 

      -- by @iq_plus 
  elseif is_momod(msg) and matches[1] == "sticker u" then 
      local oscarteam = 'mate:'..msg.to.id 
      redis:del(oscarteam) 
      return "تم الغاء كتم الملصقات" 


  elseif is_momod(msg) and matches[1] == "file k" then 
      local oscarbot = 'mate:'..msg.to.id 
      redis:set(oscarbot, true) 
      return "تم كتم الملفات" 


  elseif is_momod(msg) and matches[1] == "file u" then 
      local oscarbot = 'mate:'..msg.to.id 
      redis:del(oscarbot) 
      return "تم الغاء الكتم الملفات" 

end 

end 

return { 
    patterns = { 
        '^[!/#](media k)$', 
        '^[!/#](media u)$', 
        '^[!/#](photo k)$', 
        '^[!/#](photo u)$', 
        '^[!/#](audio k)$', 
        '^[!/#](audio u)$', 
        '^[!/#](video k)$', 
        '^[!/#](video u)$', 
        '^[!/#](sticker k)$', 
        '^[!/#](sticker u)$', 
        '^[!/#](file k)$', 
        '^[!/#](file u)$' 
    }, 
    run = oscar, 
    pre_process = pre_process 
} 
end 
