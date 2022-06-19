ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)


local jobsEventsState = {
    ['chomage'] = Config.Cchomage,

    ['public'] = Config.Ppublic,

    ['prive'] = Config.Pprive,
};

function checkPlayerJob()
    local job = ESX.PlayerData.job.name
    if (job) then
        for type, v in pairs(jobsEventsState) do
            for _, jobs in pairs(v) do
                if (jobs == job) then
                    TriggerServerEvent(("C_Impots:%s"):format(type));
                end
            end
        end
    end
end

RegisterNetEvent("C_Impots:checkPlayerJob")
AddEventHandler("C_Impots:checkPlayerJob", function()
    checkPlayerJob()
end)
