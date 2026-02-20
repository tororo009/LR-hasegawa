def lvs_settings
  same_circuits 'TOP', '.TOP'
  netlist.make_top_level_pins
  align
  same_device_classes 'N3', 'NCH'
  same_device_classes 'P3', 'PCH'
  same_device_classes 'N6', 'N6.0'
  same_device_classes 'P6', 'P6.0'
  same_device_classes 'RM', 'RES'
  same_device_classes 'RH', 'RES'
  same_device_classes 'RL2', 'RES'
  same_device_classes 'RP', 'RES'
  same_device_classes 'RN', 'RES'
  same_device_classes 'RNPO', 'RES'
  same_device_classes 'RNW', 'RES'
  tolerance 'HRES', 'R', :relative => 0.03
  tolerance 'RM', 'R', :relative => 0.03
  tolerance 'RH', 'R', :relative => 0.03
  tolerance 'RL2', 'R', :relative => 0.03
  tolerance 'RP', 'R', :relative => 0.03
  tolerance 'RN', 'R', :relative => 0.03
  tolerance 'RNPO', 'R', :relative => 0.03
  tolerance 'RNW', 'R', :relative => 0.03
  tolerance 'CAP', 'C', :relative => 0.03
  netlist.combine_devices
  schematic.combine_devices
end
