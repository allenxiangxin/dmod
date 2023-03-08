{
name:"GEO",
index:"world",
valid_begin:[0,0],
valid_end:[0,0],
mother:"",
type :"box",
size: [15000.0, 15000.0, 15000.0],
position:[0.0,0.0,0.0],
material:"air",
invisble:1,
}

{
name:"GEO",
index: "tank",
valid_begin: [0.0, 0.0],
valid_end:[0.0,0.0],
mother: "world",
type:"tube",
r_max: 5200,
size_z: 5200,
position:[0.0,0.0,0.0],
material:"stainless_steel",
color:[0.33, 0.33, 0.33, 1.0], //dimgray
drawstyle:"solid",
}


{
name:"GEO",
index: "wbls",
valid_begin: [0.0, 0.0],
valid_end:[0.0,0.0],
mother: "tank",
type:"tube",
r_max: 5175,
size_z: 5175,
position:[0.0,0.0,0.0],
material:"water_bnl",
color:[0.01, 0.01, 0.99, 1.0], //blue
drawstyle:"solid",
}

{
name:"GEO",
index: "cryo",
valid_begin: [0.0, 0.0],
valid_end:[0.0,0.0],
mother: "wbls",
type:"tube",
r_max: 1745,
size_z: 1745,
position:[0.0,0.0,0.0],
material:"stainless_steel",
color: [0.33,0.33,0.33, 1.0], //dimgray
drawstyle:"solid",
}

{
name:"GEO",
index: "lxe",
valid_begin:[0.0,0.0],
valid_end:[0.0,0.0],
mother: "cryo",
type:"tube",
r_max: 1725,
size_z: 1725,
position:[0.0,0.0,0.0],
material:"water_bnl",
color:[0.0, 1.0, 0.0, 1.0], //green
drawstyle:"solid",
}

/////////////////////////////
// PMT
/////////////////////////////

{
  name: "GEO",
  index: "pmts_side",
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "wbls",
  type: "pmtarray",
  pmt_model: "r14688",
  pmt_detector_type: "idpmt",
  sensitive_detector: "/mydet/pmt/inner",
  pos_table: "pmt_pos_side",
  orientation: "manual",
}

{
  name: "GEO",
  index: "pmts_bot",
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "wbls",
  type: "pmtarray",
  pmt_model: "r14688",
  pmt_detector_type: "idpmt",
  sensitive_detector: "/mydet/pmt/inner",
  pos_table: "pmt_pos_bot",
  orientation: "manual",
}

{
  name: "GEO",
  index: "pmts_top",
  valid_begin: [0, 0],
  valid_end: [0, 0],
  mother: "wbls",
  type: "pmtarray",
  pmt_model: "r11780_hqe",
  pmt_detector_type: "idpmt",
  sensitive_detector: "/mydet/pmt/inner",
  pos_table: "pmt_pos_top",
  orientation: "manual",
}