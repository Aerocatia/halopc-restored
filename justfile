#
# Basic justfile to make Custom Edition maps using tool.exe
#
# ./maps_resource is assumed to have pre-made resource maps with matching tags in the right tag order
# ./maps_orig is assumed to have the original 2004 Custom Edition maps
#

# Assumed to be in path
invader_crc := "invader-crc.exe"
reindeer := "reindeer.exe"
tool_squisher := "tool-squisher.exe --no-preserve-crc"

# tool.exe from the 2004 HEK
tool_hek := "./tool_hek.exe"

# 2020 Custom Edition tool.exe from the digsite leak
tool_new := "./tool_play.exe"

ui               := "levels\\ui\\ui"

a10              := "levels\\a10\\a10"
a30              := "levels\\a30\\a30"
a50              := "levels\\a50\\a50"
b30              := "levels\\b30\\b30"
b40              := "levels\\b40\\b40"
c10              := "levels\\c10\\c10"
c20              := "levels\\c20\\c20"
c40              := "levels\\c40\\c40"
d20              := "levels\\d20\\d20"
d40              := "levels\\d40\\d40"

beavercreek      := "levels\\test\\beavercreek\\beavercreek"
bloodgulch       := "levels\\test\\bloodgulch\\bloodgulch"
boardingaction   := "levels\\test\\boardingaction\\boardingaction"
carousel         := "levels\\test\\carousel\\carousel"
chillout         := "levels\\test\\chillout\\chillout"
damnation        := "levels\\test\\damnation\\damnation"
dangercanyon     := "levels\\test\\dangercanyon\\dangercanyon"
deathisland      := "levels\\test\\deathisland\\deathisland"
gephyrophobia    := "levels\\test\\gephyrophobia\\gephyrophobia"
hangemhigh       := "levels\\test\\hangemhigh\\hangemhigh"
icefields        := "levels\\test\\icefields\\icefields"
infinity         := "levels\\test\\infinity\\infinity"
longest          := "levels\\test\\longest\\longest"
prisoner         := "levels\\test\\prisoner\\prisoner"
putput           := "levels\\test\\putput\\putput"
ratrace          := "levels\\test\\ratrace\\ratrace"
sidewinder       := "levels\\test\\sidewinder\\sidewinder"
timberland       := "levels\\test\\timberland\\timberland"
wizard           := "levels\\test\\wizard\\wizard"

default:
  just --list

_copy-resources:
  cp maps_resource/bitmaps.map maps/bitmaps.map
  cp maps_resource/sounds.map maps/sounds.map
  cp maps_resource/loc.map maps/loc.map

_build-base-old:
  {{ tool_hek }} build-cache-file '{{ui}}'
  {{ tool_hek }} build-cache-file '{{beavercreek}}'
  {{ tool_hek }} build-cache-file '{{sidewinder}}'
  {{ tool_hek }} build-cache-file '{{damnation}}'
  {{ tool_hek }} build-cache-file '{{ratrace}}'
  {{ tool_hek }} build-cache-file '{{prisoner}}'
  {{ tool_hek }} build-cache-file '{{hangemhigh}}'
  {{ tool_hek }} build-cache-file '{{chillout}}'
  {{ tool_hek }} build-cache-file '{{carousel}}'
  {{ tool_hek }} build-cache-file '{{boardingaction}}'
  {{ tool_hek }} build-cache-file '{{bloodgulch}}'
  {{ tool_hek }} build-cache-file '{{wizard}}'
  {{ tool_hek }} build-cache-file '{{putput}}'
  {{ tool_hek }} build-cache-file '{{longest}}'
  {{ tool_hek }} build-cache-file '{{dangercanyon}}'
  {{ tool_hek }} build-cache-file '{{deathisland}}'
  {{ tool_hek }} build-cache-file '{{gephyrophobia}}'
  {{ tool_hek }} build-cache-file '{{icefields}}'
  {{ tool_hek }} build-cache-file '{{infinity}}'
  {{ tool_hek }} build-cache-file '{{timberland}}'

_build-campaign-old:
  {{ tool_hek }} build-cache-file '{{a10}}'
  {{ tool_hek }} build-cache-file '{{a30}}'
  {{ tool_hek }} build-cache-file '{{a50}}'
  {{ tool_hek }} build-cache-file '{{b30}}'
  {{ tool_hek }} build-cache-file '{{b40}}'
  {{ tool_hek }} build-cache-file '{{c10}}'
  {{ tool_hek }} build-cache-file '{{c20}}'
  {{ tool_hek }} build-cache-file '{{c40}}'
  {{ tool_hek }} build-cache-file '{{d20}}'
  {{ tool_hek }} build-cache-file '{{d40}}'

_build-base-pack:
  {{ tool_new }} build-cache-file '{{ui}}'
  {{ tool_new }} build-cache-file '{{beavercreek}}'
  {{ tool_new }} build-cache-file '{{sidewinder}}'
  {{ tool_new }} build-cache-file '{{damnation}}'
  {{ tool_new }} build-cache-file '{{ratrace}}'
  {{ tool_new }} build-cache-file '{{prisoner}}'
  {{ tool_new }} build-cache-file '{{hangemhigh}}'
  {{ tool_new }} build-cache-file '{{chillout}}'
  {{ tool_new }} build-cache-file '{{carousel}}'
  {{ tool_new }} build-cache-file '{{boardingaction}}'
  {{ tool_new }} build-cache-file '{{bloodgulch}}'
  {{ tool_new }} build-cache-file '{{wizard}}'
  {{ tool_new }} build-cache-file '{{putput}}'
  {{ tool_new }} build-cache-file '{{longest}}'
  {{ tool_new }} build-cache-file '{{dangercanyon}}'
  {{ tool_new }} build-cache-file '{{deathisland}}'
  {{ tool_new }} build-cache-file '{{gephyrophobia}}'
  {{ tool_new }} build-cache-file '{{icefields}}'
  {{ tool_new }} build-cache-file '{{infinity}}'
  {{ tool_new }} build-cache-file '{{timberland}}'

_build-base-nopack:
  {{ tool_new }} build-cache-file-nopack '{{ui}}'
  {{ tool_new }} build-cache-file-nopack '{{beavercreek}}'
  {{ tool_new }} build-cache-file-nopack '{{sidewinder}}'
  {{ tool_new }} build-cache-file-nopack '{{damnation}}'
  {{ tool_new }} build-cache-file-nopack '{{ratrace}}'
  {{ tool_new }} build-cache-file-nopack '{{prisoner}}'
  {{ tool_new }} build-cache-file-nopack '{{hangemhigh}}'
  {{ tool_new }} build-cache-file-nopack '{{chillout}}'
  {{ tool_new }} build-cache-file-nopack '{{carousel}}'
  {{ tool_new }} build-cache-file-nopack '{{boardingaction}}'
  {{ tool_new }} build-cache-file-nopack '{{bloodgulch}}'
  {{ tool_new }} build-cache-file-nopack '{{wizard}}'
  {{ tool_new }} build-cache-file-nopack '{{putput}}'
  {{ tool_new }} build-cache-file-nopack '{{longest}}'
  {{ tool_new }} build-cache-file-nopack '{{dangercanyon}}'
  {{ tool_new }} build-cache-file-nopack '{{deathisland}}'
  {{ tool_new }} build-cache-file-nopack '{{gephyrophobia}}'
  {{ tool_new }} build-cache-file-nopack '{{icefields}}'
  {{ tool_new }} build-cache-file-nopack '{{infinity}}'
  {{ tool_new }} build-cache-file-nopack '{{timberland}}'

_build-campaign-pack:
  {{ tool_new }} build-cache-file '{{a10}}'
  {{ tool_new }} build-cache-file '{{a30}}'
  {{ tool_new }} build-cache-file '{{a50}}'
  {{ tool_new }} build-cache-file '{{b30}}'
  {{ tool_new }} build-cache-file '{{b40}}'
  {{ tool_new }} build-cache-file '{{c10}}'
  {{ tool_new }} build-cache-file '{{c20}}'
  {{ tool_new }} build-cache-file '{{c40}}'
  {{ tool_new }} build-cache-file '{{d20}}'
  {{ tool_new }} build-cache-file '{{d40}}'

_build-campaign-nopack:
  {{ tool_new }} build-cache-file-nopack '{{a10}}'
  {{ tool_new }} build-cache-file-nopack '{{a30}}'
  {{ tool_new }} build-cache-file-nopack '{{a50}}'
  {{ tool_new }} build-cache-file-nopack '{{b30}}'
  {{ tool_new }} build-cache-file-nopack '{{b40}}'
  {{ tool_new }} build-cache-file-nopack '{{c10}}'
  {{ tool_new }} build-cache-file-nopack '{{c20}}'
  {{ tool_new }} build-cache-file-nopack '{{c40}}'
  {{ tool_new }} build-cache-file-nopack '{{d20}}'
  {{ tool_new }} build-cache-file-nopack '{{d40}}'

_fixup-base:
  {{ tool_squisher }} maps/ui.map
  {{ tool_squisher }} maps/beavercreek.map
  {{ tool_squisher }} maps/sidewinder.map
  {{ tool_squisher }} maps/damnation.map
  {{ tool_squisher }} maps/ratrace.map
  {{ tool_squisher }} maps/prisoner.map
  {{ tool_squisher }} maps/hangemhigh.map
  {{ tool_squisher }} maps/chillout.map
  {{ tool_squisher }} maps/carousel.map
  {{ tool_squisher }} maps/boardingaction.map
  {{ tool_squisher }} maps/bloodgulch.map
  {{ tool_squisher }} maps/wizard.map
  {{ tool_squisher }} maps/putput.map
  {{ tool_squisher }} maps/longest.map
  {{ tool_squisher }} maps/dangercanyon.map
  {{ tool_squisher }} maps/deathisland.map
  {{ tool_squisher }} maps/gephyrophobia.map
  {{ tool_squisher }} maps/icefields.map
  {{ tool_squisher }} maps/infinity.map
  {{ tool_squisher }} maps/timberland.map

_fixup-campaign:
  {{ tool_squisher }} maps/a10.map
  {{ tool_squisher }} maps/a30.map
  {{ tool_squisher }} maps/a50.map
  {{ tool_squisher }} maps/b30.map
  {{ tool_squisher }} maps/b40.map
  {{ tool_squisher }} maps/c10.map
  {{ tool_squisher }} maps/c20.map
  {{ tool_squisher }} maps/c40.map
  {{ tool_squisher }} maps/d20.map
  {{ tool_squisher }} maps/d40.map

_reindex-base:
  {{ reindeer }} maps/beavercreek.map maps_orig/beavercreek.map
  {{ reindeer }} maps/sidewinder.map maps_orig/sidewinder.map
  {{ reindeer }} maps/damnation.map maps_orig/damnation.map
  {{ reindeer }} maps/ratrace.map maps_orig/ratrace.map
  {{ reindeer }} maps/prisoner.map maps_orig/prisoner.map
  {{ reindeer }} maps/hangemhigh.map maps_orig/hangemhigh.map
  {{ reindeer }} maps/chillout.map maps_orig/chillout.map
  {{ reindeer }} maps/carousel.map maps_orig/carousel.map
  {{ reindeer }} maps/boardingaction.map maps_orig/boardingaction.map
  {{ reindeer }} maps/bloodgulch.map maps_orig/bloodgulch.map
  {{ reindeer }} maps/wizard.map maps_orig/wizard.map
  {{ reindeer }} maps/putput.map maps_orig/putput.map
  {{ reindeer }} maps/longest.map maps_orig/longest.map
  {{ reindeer }} maps/dangercanyon.map maps_orig/dangercanyon.map
  {{ reindeer }} maps/deathisland.map maps_orig/deathisland.map
  {{ reindeer }} maps/gephyrophobia.map maps_orig/gephyrophobia.map
  {{ reindeer }} maps/icefields.map maps_orig/icefields.map
  {{ reindeer }} maps/infinity.map maps_orig/infinity.map
  {{ reindeer }} maps/timberland.map maps_orig/timberland.map
  {{ invader_crc }} --forge 0x73EE7229 maps/ui.map
  {{ invader_crc }} --forge 0x07B3876A maps/beavercreek.map
  {{ invader_crc }} --forge 0xBD95CF55 maps/sidewinder.map
  {{ invader_crc }} --forge 0x0FBA059D maps/damnation.map
  {{ invader_crc }} --forge 0xF7F8E14C maps/ratrace.map
  {{ invader_crc }} --forge 0x43B81A8B maps/prisoner.map
  {{ invader_crc }} --forge 0xA7C8B9C6 maps/hangemhigh.map
  {{ invader_crc }} --forge 0x93C53C27 maps/chillout.map
  {{ invader_crc }} --forge 0x9C301A08 maps/carousel.map
  {{ invader_crc }} --forge 0xF4DEEF94 maps/boardingaction.map
  {{ invader_crc }} --forge 0x7B309554 maps/bloodgulch.map
  {{ invader_crc }} --forge 0xCF3359B1 maps/wizard.map
  {{ invader_crc }} --forge 0xAF2F0B84 maps/putput.map
  {{ invader_crc }} --forge 0xC8F48FF6 maps/longest.map
  {{ invader_crc }} --forge 0xC410CD74 maps/dangercanyon.map
  {{ invader_crc }} --forge 0x1DF8C97F maps/deathisland.map
  {{ invader_crc }} --forge 0xD2872165 maps/gephyrophobia.map
  {{ invader_crc }} --forge 0x5EC1DEB7 maps/icefields.map
  {{ invader_crc }} --forge 0x0E7F7FE7 maps/infinity.map
  {{ invader_crc }} --forge 0x54446470 maps/timberland.map

_clean-resources:
  rm -f maps/bitmaps.map
  rm -f maps/sounds.map
  rm -f maps/loc.map

_clean-base:
  rm -f maps/beavercreek.map
  rm -f maps/bloodgulch.map
  rm -f maps/boardingaction.map
  rm -f maps/carousel.map
  rm -f maps/chillout.map
  rm -f maps/damnation.map
  rm -f maps/dangercanyon.map
  rm -f maps/deathisland.map
  rm -f maps/gephyrophobia.map
  rm -f maps/hangemhigh.map
  rm -f maps/icefields.map
  rm -f maps/infinity.map
  rm -f maps/longest.map
  rm -f maps/prisoner.map
  rm -f maps/putput.map
  rm -f maps/ratrace.map
  rm -f maps/sidewinder.map
  rm -f maps/timberland.map
  rm -f maps/wizard.map
  rm -f maps/ui.map

_clean-campaign:
  rm -f maps/a10.map
  rm -f maps/a30.map
  rm -f maps/a50.map
  rm -f maps/b30.map
  rm -f maps/b40.map
  rm -f maps/c10.map
  rm -f maps/c20.map
  rm -f maps/c40.map
  rm -f maps/d20.map
  rm -f maps/d40.map

all-pack: _copy-resources _build-base-pack _build-campaign-pack _fixup-base _reindex-base _fixup-campaign

all-nopack: _copy-resources _build-base-nopack _build-campaign-nopack _fixup-base _reindex-base _fixup-campaign

all-pack-old: _copy-resources _build-base-pack _build-campaign-pack _build-base-old _build-campaign-old _fixup-base _reindex-base _fixup-campaign

all-nopack-old: _copy-resources _build-base-old _build-campaign-old _fixup-base _reindex-base _fixup-campaign

mp-pack: _copy-resources _build-base-pack _fixup-base _reindex-base

mp-pack-old: _copy-resources _build-base-pack _build-base-old _fixup-base _reindex-base

mp-nopack: _copy-resources _build-base-nopack _fixup-base _reindex-base

mp-nopack-old: _copy-resources _build-base-old _fixup-base _reindex-base

clean: _clean-resources _clean-base _clean-campaign
