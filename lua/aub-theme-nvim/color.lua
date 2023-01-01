local _2afile_2a = "fnl/aub-theme-nvim/color.fnl"
local _2amodule_name_2a = "aub-theme-nvim.color"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local hsl = require("external.hsluv")
do end (_2amodule_locals_2a)["hsl"] = hsl
local function hsl_to_vec(_1_)
  local _arg_2_ = _1_
  local h = _arg_2_[1]
  local s = _arg_2_[2]
  local l = _arg_2_[3]
  local r = (math.pi * (h / 180))
  return {(s * math.cos(r)), (s * math.sin(r)), l}
end
_2amodule_2a["hsl-to-vec"] = hsl_to_vec
local function vec_to_hsl(_3_)
  local _arg_4_ = _3_
  local x = _arg_4_[1]
  local y = _arg_4_[2]
  local z = _arg_4_[3]
  return {((180 / math.pi) * math.atan2(y, x)), math.sqrt(((x * x) + (y * y))), z}
end
_2amodule_2a["vec-to-hsl"] = vec_to_hsl
local function lerp_vec(_5_, _7_, l)
  local _arg_6_ = _5_
  local sx = _arg_6_[1]
  local sy = _arg_6_[2]
  local sz = _arg_6_[3]
  local _arg_8_ = _7_
  local tx = _arg_8_[1]
  local ty = _arg_8_[2]
  local tz = _arg_8_[3]
  local il = (1 - l)
  return {((sx * l) + (tx * il)), ((sy * l) + (ty * il)), ((sz * l) + (tz * il))}
end
_2amodule_2a["lerp-vec"] = lerp_vec
local function mix(source_color, target_color, alpha)
  local source_color0 = hsl.hex_to_hsluv(source_color)
  local target_color0 = hsl.hex_to_hsluv(target_color)
  local source_vec = hsl_to_vec(source_color0)
  local target_vec = hsl_to_vec(target_color0)
  local return_vec = lerp_vec(target_vec, source_vec, alpha)
  local return_color = vec_to_hsl(return_vec)
  local output = tostring(hsl.hsluv_to_hex(return_color))
  return output
end
_2amodule_2a["mix"] = mix
local function brighten(color, percent)
  local hsl_color = hsl.hex_to_hsluv(color)
  local luminance = (100 - hsl_color[3])
  local input_luminance
  do
    local mid_luminance = (hsl_color[3] + (luminance * percent))
    if (mid_luminance >= 100) then
      input_luminance = 99.99
    else
      input_luminance = mid_luminance
    end
  end
  hsl_color[3] = input_luminance
  local output = hsl.hsluv_to_hex(hsl_color)
  return output
end
_2amodule_2a["brighten"] = brighten
local function hsluv_brighten(tuple, percent)
  local hsl_color = tuple
  local luminance = (100 - hsl_color[3])
  local input_luminance
  do
    local mid_luminance = (hsl_color[3] * (1 + percent))
    if (mid_luminance >= 100) then
      input_luminance = 99.99
    else
      input_luminance = mid_luminance
    end
  end
  hsl_color[3] = input_luminance
  local output = hsl.hsluv_to_hex(hsl_color)
  return output
end
_2amodule_2a["hsluv-brighten"] = hsluv_brighten
local function darken(color, percent)
  local hsl_color = hsl.hex_to_hsluv(color)
  local luminance = (100 - hsl_color[3])
  local input_luminance
  do
    local mid_luminance = (hsl_color[3] * (1 - percent))
    if (mid_luminance >= 100) then
      input_luminance = 99.99
    else
      input_luminance = mid_luminance
    end
  end
  hsl_color[3] = input_luminance
  local output = hsl.hsluv_to_hex(hsl_color)
  return output
end
_2amodule_2a["darken"] = darken
local function saturation(color, percent)
  local hsl_color = hsl.hex_to_hsluv(color)
  local saturation0 = hsl_color[2]
  local input_saturation
  do
    local mid_saturation = (saturation0 + (saturation0 * percent))
    if (mid_saturation >= 100) then
      input_saturation = 99.99
    elseif (mid_saturation <= 0) then
      input_saturation = 0.01
    else
      input_saturation = mid_saturation
    end
  end
  hsl_color[2] = input_saturation
  local output = hsl.hsluv_to_hex(hsl_color)
  return output
end
_2amodule_2a["saturation"] = saturation
return _2amodule_2a