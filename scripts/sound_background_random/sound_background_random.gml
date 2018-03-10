var soundType = argument0; ///@param type


return asset_get_index("snd_background_"+global.soundBackgroundPrefix[soundType]+string(irandom_range(0,global.soundBackgroundAmount[soundType]-1)));
