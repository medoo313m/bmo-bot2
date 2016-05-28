[Forwarded from DEV || HELP 🖥 TV (#ZEOONE 🌝 "#﴾₮.ł.Q﴿): 20k)]
do
local function run(link, matches)
if not is_momod(msg) then
  delete_link(link.id, ok_cb, true)
    return "DON'T SEND LINKS @"..msg.from.username..'\n'
 end
local function run(link, matches)
  if ( tonumber(string.len(matches[1])) > 360 ) then
  delete_link(link.id, ok_cb, true)
  if (is_momod(link)) then
      return nil
  else
     delete_link(link.id, ok_cb, true)
  return "لاترسل روابط يا @"..msg.from.username..'\n'
    end
  end 
end
end
return {
  patterns = {
    "^(.*)",
    "^(.+)",
  },
  run = run,
}
end