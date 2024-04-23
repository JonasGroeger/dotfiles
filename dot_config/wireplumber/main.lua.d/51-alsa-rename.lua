-- Rename devices in WirePlumber / PipeWire
--
-- Commands to get the node_name:
--
--   $ wpctl status
--   $ wpctl inspect <number-from-status>
--
-- After you've changed something, reload pipewire / wireplumber:
--
--   $ systemctl --user restart pipewire pipewire-pulse wireplumber.service
--
-- More docs: https://wiki.archlinux.org/title/WirePlumber
--

local function rename(node_description, node_name)
	local rule = {
		matches = {
			{
				{ "node.name", "equals", node_name },
			},
		},
		apply_properties = {
			["node.description"] = node_description,
			["node.nick"] = "node.nick",
		},
	}

	table.insert(alsa_monitor.rules, rule)
end

-- Output
rename("Display 1 Speaker", "alsa_output.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp_3__sink")
rename("Display 2 Speaker", "alsa_output.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp_4__sink")
rename("Display 3 Speaker", "alsa_output.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp_5__sink")
rename("Dock Headphones", "alsa_output.usb-Lenovo_ThinkPad_Thunderbolt_3_Dock_USB_Audio_000000000000-00.iec958-stereo")
rename(
	"Laptop Speaker / Headphone",
	"alsa_output.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp__sink"
)
rename("Yeti Speaker", "alsa_output.usb-Blue_Microphones_Yeti_Stereo_Microphone_797_2019_09_27_86322-00.iec958-stereo")

-- Input
rename("Webcam C925e", "alsa_input.usb-046d_Logitech_Webcam_C925e_40FDB0DF-02.analog-stereo")
rename("Laptop Mic", "alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp_6__source")
rename("Dock Mic", "alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp__source")
