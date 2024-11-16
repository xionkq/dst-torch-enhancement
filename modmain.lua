local torch_fuel = GetModConfigData("torch_fuel")

local function PatchFueledComponent(inst)
	inst.components.fueled.GetPercent = function() return 1 end
	inst.components.fueled.SetPercent = function() end
	inst.components.fueled.IsEmpty = function() return false end
	inst.components.fueled.StopConsuming = function() end
	inst.components.fueled.StartConsuming = function() end
	inst.components.fueled.SetUpdateFn = function() end
end

AddPrefabPostInit("torch", function(inst)
    if not GLOBAL.TheWorld.ismastersim then
        return
    end
    if inst.components.fueled then
        if torch_fuel == 'infinite' then
            PatchFueledComponent(inst)
        else
            inst.components.fueled:InitializeFuelLevel(torch_fuel)
        end

    end
end)
