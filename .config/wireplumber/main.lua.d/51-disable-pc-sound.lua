rule = {
  matches = {
    {
      {
        "device.name", 
        "equals", 
        "alsa_card.pci-0000_2d_00.4"
      },
    },
  },

  apply_properties = {
    ["device.disabled"] = true,
  },
}

table.insert(alsa_monitor.rules, rule)