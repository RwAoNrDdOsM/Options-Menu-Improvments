return {
	mod_description = {
		en = "A mod that improves the options menu.",
	},
	menu_settings_potato = {
		en = "Potato"
	},
	menu_settings_low2 = {
		en = "Bad CPU"
	},
	menu_settings_balanced = {
		en = "Balanced"
	},
	menu_settings_balanced2 = {
		en = "Balanced +"
	},
	menu_settings_canitrunthetide = {
		en = "Can It Run The Tide"
	},
	tooltip_graphics_quality = {
		en = [[
Graphics Quality (Requires Restart!)
Sets the Graphics to templates set out by Better Options.
You should also look through the options to see if there are any that are the users preference.

Potato: Potato Settings set out by "Beyond Low Graphics (Potato Mode) [+FPS]" (you will need to modify atlas sizes in config.)
Bad CPU: Recomended Settings but lowered settings that impact CPU and lowered more intensive GPU settings.
Balanced: Recomended Settings for a good experience.
Balanced +: Recomended Settings for a good experience with some options being increased that don't have a big performance impact.
Can It Run The Tide: Peddal to the Metal, all settings max, but actually reasonable with no motion blur. i.e. Can It Run Crysis.
Custom: Custom Settings outside of the templates.
]]
	},
	tooltip_char_texture_quality = {
		en = [[
Character Texture Quality (Requires Restart!)
Set texture mipmap (resolution) for character textures.
	
No significant VRAM difference between the options. If you have a 3GB VRAM Card set enviromental quality to Medium.

Performance Impact:
GPU: Very Low CPU: None
]]
	},
	tooltip_env_texture_quality = {
		en = [[
Environment Texture Quality (Requires Restart!)
Set texture mipmap (resolution) for enviroment textures.
	
No significant VRAM difference between the options. If you have a 3GB VRAM Card set enviromental quality to Medium.

Performance Impact:
GPU: Very Low CPU: None
]]
	},
	tooltip_particle_quality = {
		en = [[
Particle Quality
Set the amount of particles rendered.
Suggested Option: Medium (good visual feedback)

Extreme: 100% amount - No reduction in quality in the distance, particles get shadows and may cast shadows.
High: 75% amount - Particles cannot be shadowed.
Medium: 50% amount - Less realistic effects in the distance, lower quality of individual particle.
Low: 25% amount - Cannot act as lights.
Lowest: 0% amount.

Performance Impact:
GPU: None - High CPU: None
]]
	},
	tooltip_low_resolution_transparency = {
		en = [[
Transparency Resolution
Set the appearance of objects behind transparent particles (fire).
Suggested Option: Low

High: Objects behind transparent effects remain sharp
Low: Objects behind transparent effects become jagged and low res in appearance.

Performance Impact:
GPU: Low - Medium CPU: None
]]
	},
	tooltip_scatter_density = {
		en = [[
Scatter Density
Set the density of decorative geometery (Grass, Rubble, etc.).
Suggested Option: 25% or above.

Off (0% in base game) can make objects you can jump on disappear.

Performance Impact:
GPU: Very Low CPU: Very Low
]]
	},
	tooltip_blood_decals = {
		en = [[
Blood Decal Amount
Set the maximum amount of blood decals/splatters on walls.
Suggested Option: You preference, 500 for a bloodsoaked battlefield or 0 for a pristine environment.

When the set number is hit, the engine will start removing the oldest splatter to make room for a new one.

Performance Impact:
GPU: Very Low CPU: None
]]
	},
	tooltip_local_light_shadows = {
		en = [[
Local Light Shadow Quality 
Enables/Disables and sets the quality of shadow casting local lights (lamps and torches).
Suggested Option: Low. Set this to Off if you need more performance.

A reasonably heavy effect that doesn’t affect the look of the game too much. Best to keep this Off or to Low.

If you have a older CPU or i3 (or equivilant) CPU you may get more performance by turning this off.

Performance Impact:
GPU: None - Medium CPU: None - High
]]
	},
	tooltip_sun_shadows = {
		en = [[
Sun Shadow Quality 
Enables/Disables and sets the quality of sun shadows (shadows on buildings, trees etc.).
Suggested Option: High

Performance heavy effect that will also greatly affect the look of the game.
No sun shadows may create lighting bugs as the levels were designed with this setting in mind.
Lower settings unfortunately look a bit pixelated and unstable in motion.

If you have a older CPU or i3 (or equivilant) CPU you may get more performance by turning this off.

Performance Impact:
GPU: None - Medium CPU: None - High
]]
	},
	menu_settings_sun_shadows = {
		en = "Sun Shadow Quality"
	},
	tooltip_max_local_light_shadows = {
		en = [[
Max Shadow Casting Lights
Sets the number of shadows casting local lights (lamps and torches).
Suggested Option: 4-5

Settings this too low will make shadows suddenly appear in a slightly distracting way as the game has to shift between which shadows to render.
If you’re not bothered by that, set it to “1”. Otherwise, keep it at 4-5 at least.

If you have a older CPU or i3 (or equivilant) CPU you may get more performance by turning this off.

Performance Impact:
GPU: Low - Medium CPU: Low - High
]]
	},
	tooltip_volumetric_fog_quality = {
		en = [[
Volumetric Fog Quality 
Enables/Disables and sets the resolution and quality of volumetric fog.
Suggested Option: Low - Medium

Extreme: Max quality (data size) - Local lights cast through the fog, lamps and torches light up the fog.
High: High quality (data size) - No shadows go through the fog.
Medium: Medium quality (data size) - Lamps/torches don't light up in the fog.
Low: Low Quality (data size) - Lights don't interact with fog at all.
Off (Lowest in base game): No volumetric fog at all.

Expensive effect that adds a nice atmosphere. Convocation of Decay is a good example to test this effect.

Performance Impact:
GPU: High CPU: None
]]
	},
	tooltip_ambient_light_quality = {
		en = [[
Ambient Light Quality 
Controls the ambient light in near proximity i.e. darkens areas and objects not hit by sunlight
Suggested Option: Off (Low in base game)

Expensive effect that adds a nice atmosphere. Convocation of Decay is a good example to test this effect.

Performance Impact:
GPU: High CPU: None
]]
	},
	tooltip_anti_aliasing = {
		en = [[
Anti-Aliasing
Enables/Disables and sets anti-ailising mode (smooths out edges, and reduces jaggy lines).
Suggested Option: TAA

TAA: Best, but softens the game up.
FXAA: Okay, but doesn't soften the game up.

Performance Impact:
GPU: Medium - High CPU: None
]]
	},
	tooltip_sharpen = {
		en = [[
Sharpness Filter
Enables/Disables sharpening filter.
Suggested Option: On

Very heavy handed sharpening to try and recover sharpness lost by TAA and smoothing shaders.
Best to use 3rd party soutions like Nvida Game Filter, AMD Radeon Image Sharpening or ReShade with a sharpening filter such as Marty McFly’s DELC Shapen filter part of qUINT.

Performance Impact:
GPU: Low CPU: None
]]
	},
	tooltip_ssao = {
		en = [[
Screen Space Ambient Occlusion
Enables/Disables and sets screen space ambient occlusion quality.
Suggested Option: Extreme or Off

Extreme: Full distance high quality SSAO.
High: Full distance SSAO.
Medium: Medium distance SSAO.
None: No SSAO.

High looks similar to Extreme but it introduces a visual bug where certain objects are heavily blurred when in motion and distant textures might loose a bit of resolution.
Setting Ambient Light Quality to High can mitigate some ambiance lost when having no SSAO.

Performance Impact:
GPU: None - High CPU: None
]]
	},
	tooltip_bloom = {
		en = [[
Bloom
Enables/Disables bloom.
Suggested Option: On

When turned off it makes certain effects flat white (burning rats).

Performance Impact:
GPU: None - Low CPU: None
]]
	},
	tooltip_skin_shading = {
		en = [[
Skin Shading
Enables/Disables advanced skin shading.
Suggested Option: Off

Hardly any appreciable difference and some users report that Kerillian's skin may look strange if this setting is turned on.

Performance Impact:
GPU: None - Medium CPU: None
]]
	},
	tooltip_dof = {
		en = [[
Depth of Field
Enables/Disables depth of field quality.
Suggested Option: Preference

Adds a blurriness to the background of certain scenes. Used to convey thickness of smoke etc, like when escaping the burning building in The Pit.
Not used often.

Performance Impact:
GPU: None - High CPU: None
]]
	},
	tooltip_ssr = {
		en = [[
Screen Space Reflections
Enables/Disables screen space reflection quality.
Suggested Option: Off

Will increase the realism of reflections in water, but is both strangely low res AND varies wildly in its performance impact.
Lowers performance a lot when there is no visible reflections, for example in the keep, but not when there is, for example Convocation’s sewers.

Performance Impact:
GPU: None - High CPU: None
]]
	},
	tooltip_light_shafts = {
		en = [[
Light Shafts
Enables/Disables light shafts from the sun.
Suggested Option: On

Nice godrays when sun/moonlight goes through trees, masts etc.

Performance Impact:
GPU: None - Low CPU: None
]]
	},
	tooltip_sun_flare = {
		en = [[
Lens Flares
Enables/Disables lens flares produced by the sun.
Suggested Option: Preference

Turn off if you find it distracting, otherwise keep it on.

Performance Impact:
GPU: None - Low CPU: None
]]
	},
	menu_settings_sun_flare = {
		en = "Sun Flares"
	},
	tooltip_lens_quality = {
		en = [[
Colour and Lens Distorstion
Enables/Disables chromatic abberation and lens distorstion (when in the teleportation bubble).
Suggested Option: Preference

Turn off if you find it distracting, otherwise keep it on.

Performance Impact:
GPU: None - Low CPU: None
]]
	},
	tooltip_motion_blur = {
		en = [[
Motion Blur
Enables/Disables Motion Blur.
Suggested Option: Off

Some terrible motion blur implmentation. If they had an option to turn of camera motion blur, it would be alot better.

Performance Impact:
GPU: None - Medium CPU: None
]]
	},
	tooltip_physics_debris = {
		en = [[
Physics Debris (Requires Restart!) 
Enables/Disables physically simulated dynamic debris.
Suggested Option: Preference

If you have a older CPU or i3 (or equivilant) CPU you may get more performance by turning this off.

Performance Impact:
GPU: None CPU: Medium
]]
	},
	tooltip_animation_lod_distance = {
		en = [[
Animation Level of Detail Distance
Controls the amount of detail in the animation at a distance.
Suggested Option: 1

0: No face or finger animations.
1: Full face and finger animations up to 8 meters.

If you have a older CPU or i3 (or equivilant) CPU you may get more performance by turning this off.

Performance Impact:
GPU: None CPU: Low
]]
	},
}

