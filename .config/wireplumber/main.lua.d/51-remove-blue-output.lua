-- FIXME: Can't seem to disable this node
rule = {
  matches = {
    {
      {
        "node.name", 
        "equals", 
        "alsa_output.usb-Generic_Blue_Microphones_2104BAB0FT88-00.analog-stereo"
      },
    },
  },

  apply_properties = {
    ["node.disabled"] = true,
  },
}

table.insert(alsa_monitor.rules, rule)