# Halo CE - Restored Edition
This repo is a fork of [halopc-revised](https://github.com/Aerocatia/halopc-revised) With the original Xbox shaders restored.
The purpose of this tagset is to provide a truly "fixed" version of Halo PC, going beyond the limitations of the original unmodified engine.

An unmodified stock version of the Gearbox port will be unable to properly use these tags or maps made from them.
It requires the following features not supported by the stock Halo PC/Halo Custom Edition clients:

- `shader_transparent_generic` support.
- limited support for monochrome format bitmaps[^1].

Usage of other unsupported features may be added at a later time depending on future modding efforts, mainly backporting MCC HUD anchors for proper widescreen support.

[^1]:Only monochrome formats natively supported by d3d9 are used, so Y8 and A8Y8. AY8 and A8 are not used (A8 is technically supported by d3d9, but is rendered differently compared to Xbox). This still provides at minimum 50% space savings on large monochrome bitmaps like the HD HUD.

## Directory Layout
### `/data`
HSC script source for Halo PC.
### `/tags`
The base English Halo PC tagset with numerous bugfixes. This is a standalone tagset in which the other below variants can be optionally applied to.
### `/loc/{de,es,fr,it,jp,kr,tw}/tags`
The translated game data for Halo PC.
### `/extra/gearbox_shader_bitmaps/tags`
Bitmaps for the old Halo PC shaders made by Gearbox.
These must be loaded in before `tags` if you with to make resource maps that are compatible with old Custom Edition maps.
These tags should not be used for anyhting else, as they conflict with the base tagset.
### `/extra/highres_bitmaps/tags`
Faithful custom high resolution versions of certain transparency bitmaps, like doors, control panels, and the KOTH Hill.
Also contains slightly higher resolution versions of bitmaps made by bungie that were used elsewhere (Xbox 1749, other parts of the final tagset).
### `/extra/highres_hud/tags`
A high resolution version of the classic Halo HUD. This version is based on content originally made by Jesse (Holy Crust).
Note that at this time not all elements of the HUD can be high resolution due to limitations in Halo PC/Halo Custom Edition.
### `/extra/highres_hud/loc/{de,es,fr,it}/tags`
Translated data for the highres HUD.

## Credits
- Aerocatia
- Holy Crust (Jesse)
- Mortis
- Snowy
- Storm Lester
- Yeonggille

## Notice
This tagset does not use any tags directly copied from the Halo MCC CE editing tools. Instead all data is derived
from the Gearbox PC port or original Xbox version.
