local Text = msg.text
local Text2 = Text:match("^"..Bot_Name.." (%d+)$")

if msg.SudoUser and Text == Bot_Name and not Text2 then
return sendMsg(msg.chat_id_,msg.id_,su[math.random(#su)])
elseif not msg.SudoUser and Text== Bot_Name and not Text2 then  
return sendMsg(msg.chat_id_,msg.id_,ss97[math.random(#ss97)])
elseif Text:match("^كول (.*)$") then
if utf8.len(Text:match("^كول (.*)$")) > 50 then 
return sendMsg(msg.chat_id_,msg.id_,"📛| ما اكدر اكول اكثر من 50 حرف 🙌🏾")
end
local callback_Text = FlterName(Text:match("^كول (.*)$"),50)
if callback_Text and callback_Text == 'الاسم سبام 📛' then
return sendMsg(msg.chat_id_,msg.id_,"📛| للاسف النص هذا مخالف ")
else
return sendMsg(msg.chat_id_,0,callback_Text) 
end
end


end
return {Tshake = song}