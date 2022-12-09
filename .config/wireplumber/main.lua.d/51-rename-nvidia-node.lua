rule = {
  matches = {
    {
      {
        "node.name", 
        "equals", 
        "alsa_output.pci-0000_2b_00.1.hdmi-stereo-extra1"
      },
    },
  },

  apply_properties = {
    ["node.nick"] = "Nvidia HDMI Output",
    ["node.description"] = "Nvidia HDMI Output (HDMI 2)",
    ["device.description"] = "Nvidia HDMI Output (HDMI 2)",
  },
}

table.insert(alsa_monitor.rules, rule)