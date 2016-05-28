do

local function pro_process(msg)

local fwd = 'mate:'..msg.to.id 

if redis:get(fwd) and not is_momod(msg) then
    delete_msg(msg.id, ok_cb, true)
end
 return msg
 
 end
 local function zeoone(msg, matches)
     chat_id = msg.to.id
     if matches[1]== 'k' and matches[2]== 'fwd' then
         local fwd = 'mate:'..msg.to.id
         redis:set(fwd, true)
         return 'تم منع توجيه'
    
elseif is_momod(msg) and matches[1]== 'u' and matches[2]== 'fwd' then
    local fwd = 'mate:'..msg.to.id
    redis:del(fwd)
    return 'تم الغاء منع توجيه'
end

end
return {
    patterns ={
        '^[!/#](k) (fwd)$', 
        '^[!/#](u) (fwd)$', 
    },
run = zeoone,
pre_process = pre_process 
}
end