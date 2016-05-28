
-- made by { @Mouamle }
do
ws = {}
rs = {}

-- some examples of how to use this :3 
ws[1] = "@medoo_313_m" -- msg 
rs[1] = "عيني" -- reply

ws[2] = "شلونك" -- msg
rs[2] = "تمام بحي وانتة " -- reply

ws[3] = "تمام" -- msg
rs[3] = "دووم" -- reply

ws[4] = "ضوجة" -- msg 
rs[4] = "اي خرب وين نروح" -- reply

ws[5] = "اوف" -- msg 
rs[5] = "امشي خلي نروح للديسكو" -- reply

ws[6] = "يلة" -- msg 
rs[6] = "اصبر خل البس الحذاء هههه" -- reply

ws[7] = "معزوفة" -- msg 
rs[7] = "طم طم طح طح روح للكاع" -- reply

ws[8] = "احبج" -- msg 
rs[8] = "احبك واليحب بلوة" -- reply

ws[11] = "احبك" -- msg 
rs[11] = "مبين عليك زاحف نوعية فاخرة" -- reply

ws[12] = "شتكول عل بوتات الجديدة" -- msg 
rs[12] = "طيط بطورين ههه" -- reply

ws[13] = "منو اقوة بوت" -- msg 
rs[13] = "اني طبعن دي دي لحد يوصل" -- reply

ws[14] = "شكاعد تسوي هسة" -- msg 
rs[14] = "والله لازم البطل والجكارة وصك بيهن" -- reply

ws[15] = "شتكول عل زواحف" -- msg 
rs[15] = "والله عمي بس الزواحف يكبلون شايفلك شريف كبل ماكو" -- reply

ws[16] = "اكلك" -- msg 
rs[16] = "كول" -- reply

ws[17] = "بوس الاعضاء" -- msg 
rs[17] = "لا ونعال الحمزة استحي" -- reply

--ws[18] = "اني عمر احبك" -- msg 
--rs[18] = "اني هم احبك 😍 مح ❤️" -- reply

ws[19] = "شكو ماكو" -- msg 
rs[19] = "غيرك براسي ماكو 💨😽🚬️" -- reply

ws[20] = "تا حسك اجذب" -- msg 
rs[20] = "شايفني كواد 🌚😂️" -- reply

ws[21] = "شخبار صديقتك" -- msg 
rs[21] = "والله 🌚💔 تركتهة ️" -- reply

ws[22] = "ليش ولك تركتهة" -- msg 
rs[22] = "برب زنجرت 😂💔 رب ما بقة براسهة️" -- reply

ws[23] = "اروح اسمع" -- msg 
rs[23] = "شتسمع️" -- reply

ws[24] = "حسين حركة" -- msg 
rs[24] = "هاذ اكبر زاحف 🐍 شفتة بحياتي 😂✌🏿️" -- reply

ws[25] = "شنو رائيك" -- msg 
rs[25] = "بمنو️" -- reply


ws[28] = "مرحبا" -- msg 
rs[28] = "مراحب 🌹 منور/ة 😊️" -- repl

ws[29] = "هلو" -- msg 
rs[29] = "هلوات 🌹 منور/ة 😊️" -- repl

ws[30] = "السلام عليكم" -- msg 
rs[30] = "وعليكم 👋🏿 السلام ورحمة الله 😊🌹" -- rep

ws[31] = "حموشي" -- msg 
rs[31] = "عمي هاذ الذيب 🐆 منو يلحكة 😈✋🏿️" -- rep

ws[32] = "صوفي" -- msg 
rs[32] = "ههههه هاذ طيز 😂🚶🏿🏿️" -- rep


--ws[33] = "نوسه" -- msg 
--rs[33] = "وردة 🌹 مال الله ضاغطتهم 😌✋🏿" -- rep

ws[34] = "منو تحب اكثر اني لو صوفي" -- msg 
rs[34] = "😕 دي ثنينكم احب الجكارة والنركيلة 😂✋🏿" -- rep

ws[35] = "ايشتارة" -- msg 
rs[35] = "ملكه👑عصره وحمامه 🕊" -- rep

ws[36] = "باي" -- msg 
rs[36] = "بايات 👋🏿 الله وياك/ج وردة 😊🌹" -- rep

ws[37] = "تا حسك ساحف" -- msg 
rs[37] = "اي والله 😁 اسحف علة ابوية اريد فلوس 🐼💔" -- rep

ws[38] = "تسلم" -- msg 
rs[38] = "ادلل حبي 😘🌹" -- rep

ws[38] = "تحبني" -- msg 
rs[38] = "اي" -- rep

ws[39] = "شكد" -- msg 
rs[39] = "اكثر مما تصور 🙊❤️" -- rep

ws[40] = "كلي حباب" -- msg 
rs[40] = "صفر 🙈 😂🚶🏿" -- rep

--ws[41] = "ايان" -- msg 
--rs[41] = "بربك صدك تحجي شايفلك طيز مات" -- rep

ws[42] = "والله بواهسي اروح للزوراء" -- msg 
rs[42] = "ليش" -- rep

ws[41] = "اغير جو" -- msg 
rs[41] = "😂 تغير جو لو تسحف 🐍 عل بنات" -- rep







-- the main function
function run( msg, matches )
	-- just a local variables that i used in my algorithm  
	local i = 0; local w = false

	-- the main part that get the message that the user send and check if it equals to one of the words in the ws table :)
	-- this section loops through all the words table and assign { k } to the word index and { v } to the word itself 
	for k,v in pairs(ws) do
		-- change the message text to uppercase and the { v } value that toke form the { ws } table and than compare it in a specific pattern
		if ( string.find(string.upper(msg.text), string.upper(v) ) ) then
			-- assign the { i } to the index of the reply and the { w } to true ( we will use it later )
			i = k; w = true;
		end
	end

	-- check if { w } is not false and { i } not equals to 0
	if ( (w ~= false) and (i ~= 0) ) then
		-- get the receiver :3 
		R = get_receiver(msg)
		-- send him the proper message from the index that { i } assigned to
		send_large_msg ( R , rs[i] );
	end
	
	-- don't edit this section
	if ( msg.text == "about" ) then
		if ( msg.from.username == "Mouamle" ) then
			R = get_receiver(msg)
			send_large_msg ( R , "Made by @Mouamle" );
		end
	end 

end



return {
	patterns = {
		"(.*)"		
  	},
  	run = run
} 


end