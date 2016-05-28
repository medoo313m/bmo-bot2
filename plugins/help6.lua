do

local function run(msg,matches)

local reply_id = msg['id']
if is_momod(msg) and matches[1]== '#help6' then
  local alnaze = [[


✅Additional orders✅
💭#add sudo : Add Developer
💭#image : Suspense converting to image
💭#insta +user :shou info instagram
💭#close tags : lock tags
💭#open tags : open tags
💭#tagall +messeges
💭#tr + هلو : Word translation
💭#tr ar +hello :Word translation
💭#music  + اسم الاغنيه ب الانكلش
💭#dl + رقم الاغنية::لتحميل الاغنيه
↪️➖➖➖➖➖➖➖➖➖➖↩️
@medoo_313_m
   ]] 
reply_msg(reply_id, alnaze, ok_cb, false)
end

local reply_id = msg['id']
if not is_momod(msg) then
local alnaz = "للمشرفين فقط 🖕🏿😎"
reply_msg(reply_id, alnaze, ok_cb, false)
end

end
return {
patterns ={
  "^(#help6)$",
},
run = run
}
end