RegisterNetEvent("enp-msg:Received")
AddEventHandler('enp-msg:Received', function(source, textmsg, names2, names3 )
	textData.hasRecievedMessage = true
	textData.lastPlayerMessage = textmsg
	textData.lastPlayermessageRecieved = source
	textData.lastMessagenames2 = names3
	TriggerEvent('pNotify:SendNotification',{ text = "MSG de: "..names3..".<br>Su ID : ".. source ..", <br> Mensaje: "..textmsg.." ", 
		timeout = 15000,
		type = "info",
		theme = "sunset"
	})  
	PlaySound(-1, "Event_Start_Text", "GTAO_FM_Events_Soundset", 0, 0, 1)
end)

RegisterNetEvent("enp-msg:Sent")
AddEventHandler('enp-msg:Sent', function(tPID, names2)
	TriggerEvent('pNotify:SendNotification',{ text = "Has enviado un mensaje privado a: "..names2..".<br>Su ID : "..tPID.." ", 
		timeout = 15000,
		type = "info",
		theme = "sunset"
	})  
end)

Citizen.CreateThread(function()
	TriggerEvent('chat:addSuggestion', '/msg', '/msg + ID del jugador + mensaje' )
end)
