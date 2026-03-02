def lvs_settings
  same_circuits 'invbuf', '.TOP'
  netlist.make_top_level_pins
  align
  same_device_classes 'NMOS', 'NCH'
  same_device_classes 'PMOS', 'PCH'
  same_device_classes 'R_BDR', 'RES'
  same_device_classes 'R_MPR', 'RES'
  same_device_classes 'R_PW', 'RES'
  same_device_classes 'PIP_cap', 'CAP'
  tolerance 'R_BDR', 'R', :relative => 0.03
  tolerance 'R_MPR', 'R', :relative => 0.03
  tolerance 'R_PW', 'R', :relative => 0.03
  tolerance 'PIP_cap', 'C', :relative => 0.03
  netlist.combine_devices
  schematic.combine_devices
end
