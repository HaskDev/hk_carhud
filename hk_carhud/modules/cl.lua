Citizen.CreateThread(function()
    while true do
        if IsPedInAnyVehicle(PlayerPedId(), false) then 
        SendNUIMessage({
            action = 'show:carhud',
            velocidad = (GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId(), false)) * 3.6);
            fuel = GetVehicleFuelLevel(GetVehiclePedIsIn(PlayerPedId(), false));
            vida = IsPedInAnyVehicle(PlayerPedId()) and math.ceil((GetVehicleEngineHealth(GetVehiclePedIsIn(PlayerPedId())) / 10)) or 0,
            rpm = ((GetVehicleCurrentRpm(GetVehiclePedIsIn(PlayerPedId()))) * 100) or 0,
        })
    elseif not IsPedInAnyVehicle(PlayerPedId()) then -- pero si no hay un jugador en un vehiculo entonces...
        SendNUIMessage({ action = "outVeh"; }) -- mandar accion en js, hace que oculte el carhud
    end
        Wait(100)
    end
end)