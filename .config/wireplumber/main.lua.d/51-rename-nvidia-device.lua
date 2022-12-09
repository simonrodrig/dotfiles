rule = {
  matches = {
    {
      {
        "device.name", 
        "equals", 
        "alsa_card.pci-0000_2b_00.1"
      },
    },
  },

  apply_properties = {
    ["device.description"] = "Nvidia HDMI Output (HDMI 2)",
  },
}

table.insert(alsa_monitor.rules, rule)