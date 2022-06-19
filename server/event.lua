RegisterServerEvent('C_Impots:chomage')
AddEventHandler('C_Impots:chomage', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerEvent('esx_addonaccount:getSharedAccount', Config.Society_gouv, function(account)
        societyAccount = account
    end)

    xPlayer.removeAccountMoney('bank', Config.Impots.Chomage)
    if Config.Gouv == true then
        societyAccount.addMoney(Config.Impots.Chomage)
    end
    TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Centrale', 'Impôts', 'Vous avez été prélevé de~g~ '..Config.Impots.Chomage..'$~s~ sur votre compte bancaire !', 'CHAR_BANK_FLEECA', 2)
end)

RegisterServerEvent('C_Impots:public')
AddEventHandler('C_Impots:public', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerEvent('esx_addonaccount:getSharedAccount', Config.Society_gouv, function(account)
        societyAccount = account
    end)

    xPlayer.removeAccountMoney('bank', Config.Impots.Public)
    if Config.Gouv == true then
        societyAccount.addMoney(Config.Impots.Public)
    end
    TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Centrale', 'Impôts', 'Vous avez été prélevé de~g~ '..Config.Impots.Public..'$~s~ sur votre compte bancaire !', 'CHAR_BANK_FLEECA', 2)
end)

RegisterServerEvent('C_Impots:prive')
AddEventHandler('C_Impots:prive', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerEvent('esx_addonaccount:getSharedAccount', Config.Society_gouv, function(account)
        societyAccount = account
    end)

    xPlayer.removeAccountMoney('bank', Config.Impots.Prive)
    if Config.Gouv == true then
        societyAccount.addMoney(Config.Impots.Prive)
    end
    TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Centrale', 'Impôts', 'Vous avez été prélevé de~g~ '..Config.Impots.Prive..'$~s~ sur votre compte bancaire !', 'CHAR_BANK_FLEECA', 2)
end)
