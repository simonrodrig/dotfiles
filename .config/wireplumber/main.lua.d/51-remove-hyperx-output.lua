-- FIXME: Can't seem to disable this node
rule = {
  matches = {
    {
      {
        "node.name", 
        "equals", 
        "alsa_input.usb-Kingston_HyperX_7.1_Audio_00000000-00.analog-stereo"
      },
    },
  },

  apply_properties = {
    ["node.disabled"] = true,
  },
}

table.insert(alsa_monitor.rules, rule)