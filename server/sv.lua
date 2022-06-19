ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

CreateThread(function()
    while true do
        Wait(Config.Time)
        TriggerClientEvent("C_Impots:checkPlayerJob", -1)
    end
end)