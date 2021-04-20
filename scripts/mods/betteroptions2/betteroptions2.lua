local mod = get_mod("betteroptions2")
local options_view_settings = require("scripts/ui/views/options_view_settings")

-- Let's me modify existing localiaztion strings
local vmf = get_mod("VMF")
mod:hook("Localize", function(func, text_id)
    local str = vmf.quick_localize(mod, text_id)
    if str then return str end
    return func(text_id)
end)

-- Removing redundant Extreme settings and changing Low setting to Off
mod:hook_origin(OptionsView, "cb_local_light_shadow_quality_setup", function (self)
	local options = {
		{
			value = "off",
			text = Localize("menu_settings_off")
		},
		{
			value = "low",
			text = Localize("menu_settings_low")
		},
		{
			value = "medium",
			text = Localize("menu_settings_medium")
		},
		{
			value = "high",
			text = Localize("menu_settings_high")
		},
		--[[{
			value = "extreme",
			text = Localize("menu_settings_extreme")
		}]]
	}
	local local_light_shadow_quality = Application.user_setting("local_light_shadow_quality")
	local deferred_local_lights_cast_shadows = Application.user_setting("render_settings", "deferred_local_lights_cast_shadows")
	local forward_local_lights_cast_shadows = Application.user_setting("render_settings", "forward_local_lights_cast_shadows")
	local selection = nil

	if not deferred_local_lights_cast_shadows or not forward_local_lights_cast_shadows then
		selection = 1
	elseif local_light_shadow_quality == "low" then
		selection = 2
	elseif local_light_shadow_quality == "medium" then
		selection = 3
	elseif local_light_shadow_quality == "high" then
		selection = 4
	--[[elseif local_light_shadow_quality == "extreme" then
		selection = 5]]
	end

	return selection, options, "menu_settings_local_light_shadow_quality"
end)

mod:hook_origin(OptionsView, "cb_sun_shadows_setup", function (self)
	local options = {
		{
			value = "off",
			text = Localize("menu_settings_off")
		},
		{
			value = "low",
			text = Localize("menu_settings_low")
		},
		{
			value = "medium",
			text = Localize("menu_settings_medium")
		},
		{
			value = "high",
			text = Localize("menu_settings_high")
		},
		--[[{
			value = "extreme",
			text = Localize("menu_settings_extreme")
		}]]
	}
	local sun_shadows = Application.user_setting("render_settings", "sun_shadows")
	local sun_shadow_quality = Application.user_setting("sun_shadow_quality")
	local selection = nil

	if sun_shadows then
		if sun_shadow_quality == "low" then
			selection = 2
		elseif sun_shadow_quality == "medium" then
			selection = 3
		elseif sun_shadow_quality == "high" then
			selection = 4
		elseif sun_shadow_quality == "extreme" then
			selection = 5
		end
	else
		selection = 1
	end

	return selection, options, "menu_settings_sun_shadows"
end)

mod:hook_origin(OptionsView, "cb_ambient_light_quality_setup", function (self)
	local options = {
		{
			value = "low",
            --text = Localize("menu_settings_low")
            text = Localize("menu_settings_off")
		},
		{
			value = "high",
			text = Localize("menu_settings_high")
		}
	}
	local ambient_light_quality = Application.user_setting("ambient_light_quality")
	local default_value = DefaultUserSettings.get("user_settings", "ambient_light_quality")
	local selected_option = 1
	local default_option = nil

	for i = 1, #options, 1 do
		if options[i].value == ambient_light_quality then
			selected_option = i
		end

		if default_value == options[i].value then
			default_option = i
		end
	end

	return selected_option, options, "menu_settings_ambient_light_quality", default_option
end)

mod:hook_origin(OptionsView, "cb_volumetric_fog_quality_setup", function (self)
	local options = {
		{
			value = "lowest",
			text = Localize("menu_settings_off")
		},
		{
			value = "low",
			text = Localize("menu_settings_low")
		},
		{
			value = "medium",
			text = Localize("menu_settings_medium")
		},
		{
			value = "high",
			text = Localize("menu_settings_high")
		},
		{
			value = "extreme",
			text = Localize("menu_settings_extreme")
		}
	}
	local volumetric_fog_quality = Application.user_setting("volumetric_fog_quality")
	local default_value = DefaultUserSettings.get("user_settings", "volumetric_fog_quality")
	local selected_option = 1
	local default_option = nil

	for i = 1, #options, 1 do
		if options[i].value == volumetric_fog_quality then
			selected_option = i
		end

		if default_value == options[i].value then
			default_option = i
		end
	end

	return selected_option, options, "menu_settings_volumetric_fog_quality", default_option
end)

-- New Presets
GraphicsQuality = {
	low = {
		user_settings = {
			particles_quality = "medium",
			use_physic_debris = false,
			use_high_quality_fur = false,
			local_light_shadow_quality = "low",
			volumetric_fog_quality = "low",
			num_blood_decals = 250,
			animation_lod_distance_multiplier = 0,
			ao_quality = "off",
			char_texture_quality = "high",
			ambient_light_quality = "low",
			sun_shadow_quality = "low",
			env_texture_quality = "medium"
		},
		render_settings = {
			light_shafts_enabled = true,
			lens_quality_enabled = false,
			sharpen_enabled = true,
			fxaa_enabled = false,
			skin_material_enabled = false,
			forward_local_lights_cast_shadows = false,
			sun_shadows = false,
			sun_flare_enabled = false,
			dof_enabled = false,
			ssr_enabled = false,
			bloom_enabled = true,
			deferred_local_lights_cast_shadows = false,
			taa_enabled = true,
			ssr_high_quality = false,
			low_res_transparency = true,
			max_shadow_casting_lights = 0,
			lod_scatter_density = 0,
			motion_blur_enabled = false
		}
	},
	medium = {
		user_settings = {
			particles_quality = "medium",
			use_physic_debris = true,
			use_high_quality_fur = false,
			local_light_shadow_quality = "low",
			volumetric_fog_quality = "low",
			num_blood_decals = 250,
			animation_lod_distance_multiplier = 1,
			ao_quality = "medium",
			char_texture_quality = "high",
			ambient_light_quality = "low",
			sun_shadow_quality = "high",
			env_texture_quality = "high"
		},
		render_settings = {
			light_shafts_enabled = true,
			lens_quality_enabled = false,
			sharpen_enabled = true,
			fxaa_enabled = false,
			skin_material_enabled = false,
			forward_local_lights_cast_shadows = true,
			sun_shadows = true,
			sun_flare_enabled = true,
			dof_enabled = false,
			ssr_enabled = false,
			bloom_enabled = true,
			deferred_local_lights_cast_shadows = true,
			taa_enabled = true,
			ssr_high_quality = false,
			low_res_transparency = true,
			max_shadow_casting_lights = 4,
			lod_scatter_density = 0.25,
			motion_blur_enabled = false
		}
	},
	high = {
		user_settings = {
			particles_quality = "high",
			use_physic_debris = true,
			use_high_quality_fur = false,
			local_light_shadow_quality = "low",
			volumetric_fog_quality = "medium",
			num_blood_decals = 250,
			animation_lod_distance_multiplier = 1,
			ao_quality = "high",
			char_texture_quality = "high",
			ambient_light_quality = "low",
			sun_shadow_quality = "high",
			env_texture_quality = "high"
		},
		render_settings = {
			light_shafts_enabled = true,
			lens_quality_enabled = true,
			sharpen_enabled = true,
			fxaa_enabled = false,
			skin_material_enabled = false,
			forward_local_lights_cast_shadows = true,
			sun_shadows = true,
			sun_flare_enabled = true,
			dof_enabled = false,
			ssr_enabled = false,
			bloom_enabled = true,
			deferred_local_lights_cast_shadows = true,
			taa_enabled = true,
			ssr_high_quality = false,
			low_res_transparency = false,
			max_shadow_casting_lights = 6,
			lod_scatter_density = 1,
			motion_blur_enabled = false
		}
	},
	extreme = {
		user_settings = {
			particles_quality = "extreme",
			use_physic_debris = true,
			use_high_quality_fur = false,
			local_light_shadow_quality = "high",
			volumetric_fog_quality = "extreme",
			num_blood_decals = 500,
			animation_lod_distance_multiplier = 1,
			ao_quality = "extreme",
			char_texture_quality = "high",
			ambient_light_quality = "high",
			sun_shadow_quality = "high",
			env_texture_quality = "high"
		},
		render_settings = {
			light_shafts_enabled = true,
			lens_quality_enabled = true,
			sharpen_enabled = true,
			fxaa_enabled = false,
			skin_material_enabled = true,
			forward_local_lights_cast_shadows = true,
			sun_shadows = true,
			sun_flare_enabled = true,
			dof_enabled = true,
			ssr_enabled = true,
			bloom_enabled = true,
			deferred_local_lights_cast_shadows = true,
			taa_enabled = true,
			ssr_high_quality = true,
			low_res_transparency = false,
			max_shadow_casting_lights = 10,
			lod_scatter_density = 1,
			motion_blur_enabled = false,
		}
	},
	custom = {
		user_settings = {},
		render_settings = {}
	}
}

-- Potato Settings Presets
GraphicsQuality.lowest = {
		user_settings = {
			particles_quality = "lowest",
			use_physic_debris = false,
			use_high_quality_fur = false,
			local_light_shadow_quality = "low",
			volumetric_fog_quality = "lowest",
			num_blood_decals = 0,
			animation_lod_distance_multiplier = 0,
			ao_quality = "off",
			char_texture_quality = "low",
			ambient_light_quality = "low",
			sun_shadow_quality = "low",
			env_texture_quality = "low",
			process_priority = "high",
		},
		render_settings = {
			cached_local_lights_shadow_atlas_size = {
				128,
				128,
			},
			local_lights_shadow_atlas_size = {
				128,
				128
			},
			static_sun_shadow_map_size = {
				128,
				128,
			},
			sun_shadow_map_size = {
				128,
				128
			},
			volumetric_data_size = {
				2,
				1,
				3
			},
			lod_decoration_density = 0.75,
			lod_object_multiplier = 0.75,
			world_interaction_size = {
				320,
				240,
			},
			use_baked_enemy_meshes = true,
			particles_cast_shadows = false,
			volumetric_reprojection_amount = 0,

			light_shafts_enabled = false,
			lens_quality_enabled = false,
			sharpen_enabled = false,
			fxaa_enabled = false,
			skin_material_enabled = false,
			forward_local_lights_cast_shadows = false,
			sun_shadows = false,
			sun_flare_enabled = false,
			dof_enabled = false,
			ssr_enabled = false,
			bloom_enabled = false,
			deferred_local_lights_cast_shadows = false,
			taa_enabled = false,
			ssr_high_quality = false,
			low_res_transparency = true,
			max_shadow_casting_lights = 0,
			lod_scatter_density = 0,
			motion_blur_enabled = false,
		}
}

-- Preset Name Changes
mod:hook_origin(OptionsView, "cb_graphics_quality_setup", function (self)
	local options = {
		{
			value = "custom",
			text = Localize("menu_settings_custom")
		},
		{
			value = "lowest",
			text = Localize("menu_settings_potato")
		},
		{
			value = "low",
			text = Localize("menu_settings_low2")
		},
		{
			value = "medium",
			text = Localize("menu_settings_balanced")
		},
		{
			value = "high",
			text = Localize("menu_settings_balanced2")
		},
		{
			value = "extreme",
			text = Localize("menu_settings_canitrunthetide")
		},
	}
	local graphics_quality = Application.user_setting("graphics_quality")
	local selected_option = 1

	for i, step in ipairs(options) do
		if graphics_quality == step.value then
			selected_option = i

			break
		end
	end

	return selected_option, options, "menu_settings_graphics_quality", "balanced"
end)

-- Hook to change Preset to Custom when the Options Menu closes so it works in Official
mod:hook(OptionsView, "on_exit", function (func, self)
	Application.set_user_setting("graphics_quality", "custom")
	func(self)
end)
